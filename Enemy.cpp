#include "Main.h"

// 敵の初期化
void CEnemy::Reset() {
	Model=GetModel(L"BearLight.x");
	Rotation=RotationY(0.5f);
}

// 敵の移動
void CEnemy::Move() {
}

