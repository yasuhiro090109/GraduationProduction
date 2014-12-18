#include "Main.h"

// 変数
CMoverList StageList(sizeof(CStage), 100);
CMoverList PlayerList(sizeof(CPlayer), 100);
CMoverList EnemyList(sizeof(CEnemy), 1000);
CMoverList WeaponList(sizeof(CWeapon), 10000);
CMoverList BulletList(sizeof(CBullet), 10000);
CMoverList EffectList(sizeof(CEffect), 10000);
CMoverList BlockList(sizeof(CBlock), 10000);
CMoverList ItemList(sizeof(CItem), 1000);
CMoverList CameraList(sizeof(CCamera), 100);
CMoverList LightList(sizeof(CLight), 100);

CCamera* Camera;
int Score;

// ゲーム本体
class CMyGame : public CGame {
public:
	int Time;
	bool Pause, PrevPause;
	CFont* Font;
	CClock ClockMove, ClockDraw, ClockIdle;

	// 初期化
	CMyGame::CMyGame() : CGame(L"My Game") {
		const wchar_t fontchar[]=
			L"~|0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ,.(){}<>!?+-x*/='\\\"#$%&@[]";
		Font=new CFont(Graphics->GetDevice(), 
			ExePath+L"..\\Font\\Font.png", 0, fontchar, 
			16.0f/256, 32.0f/256, 16, 32, 2, 2);
		//NetworkInput.Open(Config.GetValue(L"Server"), Config.GetIntValue(L"Port"));
		Reset();

		WindowX=Config.GetIntValue(L"WindowX");
		WindowY=Config.GetIntValue(L"WindowY");
		WindowWidth=Config.GetIntValue(L"WindowWidth");
		WindowHeight=Config.GetIntValue(L"WindowHeight");
		ResetScreen();
	}

	// リセット
	void Reset() {
		Sound->Stop();

		StageList.Clear();
		PlayerList.Clear();
		EnemyList.Clear();
		WeaponList.Clear();
		BulletList.Clear();
		EffectList.Clear();
		BlockList.Clear();
		ItemList.Clear();
		CameraList.Clear();
		LightList.Clear();

		Score=Time=0;
		Pause=PrevPause=false;

		Camera=New<CCamera>();
		New<CStage>();
	}

	// 移動
	void Move() {
		ClockIdle.End();
		ClockMove.Begin();
		if (KeyState[0][DIK_C]) Reset();
		if (!PrevPause && KeyState[0][DIK_V]) Pause=!Pause;
		PrevPause=KeyState[0][DIK_V];
		if (!Pause) {
			StageList.Move();
			PlayerList.Move();
			EnemyList.Move();
			WeaponList.Move();
			BulletList.Move();
			EffectList.Move();
			BlockList.Move();
			LightList.Move();
			ItemList.Move();
			CameraList.Move();
			Time++;
		}
		ClockMove.End();
	}

	// 描画
	void Draw() {
		ClockDraw.Begin();
		CBasicRenderer& r=*Renderer;
		r.ClearRenderTarget=true;
		r.Color=CColor(0, 0, 0, 1);
		r.Camera=Camera;
		r.LightList=&LightList;
		r.Perspective=r.ZBuffer=r.Sort=r.Billboard=true;

		r.ShadowSize=1024;
		r.ShadowCascade=3;
		r.ShadowEdge=0.5f;
		r.ShadowOffset=0.001f;
		r.ShadowRoot=2;

		r.OculusParallax=Config.GetFloatValue(L"OculusParallax");
		r.OculusWidth=Config.GetIntValue(L"OculusWidth");
		r.OculusHeight=Config.GetIntValue(L"OculusHeight");

		r.Remove();
		r.Add(StageList);
		r.Add(BlockList);
		r.Add(EffectList);
		r.Add(WeaponList);
		r.Add(PlayerList);
		r.Add(ItemList);
		r.Add(EnemyList);
		r.Add(BulletList);
		r.Render();

		ClockDraw.End();
		Graphics->SetRenderTarget(r.RenderTarget);
		Font->DrawText(wstring(L"MOVE ")+ToStr(ClockMove.GetFloat()), 0, 0, CColor(1, 1, 1, 1), CColor(0, 0, 0, 1));
		Font->DrawText(wstring(L"DRAW ")+ToStr(ClockDraw.GetFloat()), 0, 32, CColor(1, 1, 1, 1), CColor(0, 0, 0, 1));
		Font->DrawText(wstring(L"IDLE ")+ToStr(ClockIdle.GetFloat()), 0, 64, CColor(1, 1, 1, 1), CColor(0, 0, 0, 1));
		Graphics->SetRenderTarget(0);

		ClockIdle.Begin();
	}
};

CMyGame* Game;
// アプリケーションの起動
INT WINAPI WinMain(HINSTANCE hinst, HINSTANCE, LPSTR, INT) {
	Game=new CMyGame();
	Game->Run();
	delete Game;
	return 0;
}

