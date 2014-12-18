#include "Main.h"

// ©‹@‚Ì‰Šú‰»
void CPlayer::Reset() {
	Model=GetModel(Random(0, 1)<0.5f?L"PenguinLight.x":L"BearLight.x");
	Rotation=RotationY(Random(0, 1));
}

// ©‹@‚ÌˆÚ“®
void CPlayer::Move() {
	Rotation*=RotationY(0.01f);
}

