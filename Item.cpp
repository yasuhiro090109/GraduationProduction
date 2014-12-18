#include "Main.h"

// アイテムの初期化
void CItem::Reset() {
	Texture=GetTexture(L"Item.png");
	Scale=CVector(1, 1, 1)*0.1f;	
}

// アイテムの移動
void CItem::Move() {
}

