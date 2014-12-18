#include "Main.h"

// ステージの初期化
void CStage::Reset() {
	NewLight<CLight>(CMover::AMBIENT, CColor(0.2f, 0.2f, 0.2f, 1));
	NewLight<CLight>(CMover::DIRECTIONAL, CColor(0.6f, 0.6f, 0.6f, 1), CVector(-1, 1, -1));
	NewLight<CLight>(CMover::DIRECTIONAL, CColor(0.3f, 0.3f, 0.3f, 1), CVector(1, -1, 1));
	NewLight<CLight>(CMover::SHADOW, CColor(0.2f, 0.2f, 0.2f, 1), CVector(0, 100, 0));

	Model=GetModel(L"room.x");
	Position.Y=-1;
	Scale=5;
	for (int i=0; i<30; i++) New<CPlayer>(CVector(Random(-20, 20), 0, Random(-20, 20)));
}

// ステージの移動
void CStage::Move() {
}
