#include "Main.h"

// ブロックの初期化
void CBlock::Reset() {
	Texture=GetTexture(L"Block.png");
	Scale=CVector(1, 1, 1)*0.1f;
}

// ブロックの移動
void CBlock::Move() {
}

