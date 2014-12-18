#include "Main.h"

// ƒJƒƒ‰‚Ì‰Šú‰»
void CCamera::Reset() {
}

// ƒJƒƒ‰‚ÌˆÚ“®
void CCamera::Move() {
	Rotation=Oculus[0].Rotation;
	Position+=Key[0].Direction().XFY(0)*Camera->Rotation*0.2f;
}
