#include "Main.h"

// ©‹@‚Ì‰Šú‰»
void CPlayer::Reset() {
	Model=GetModel(Random(0, 1)<0.5f?L"PenguinLight.x":L"BearLight.x");
	Rotation=RotationY(Random(0, 1));
	EnemyList.Apply([&](CMover* e){
		target = e;
	});
}

// ©‹@‚ÌˆÚ“®
void CPlayer::Move() {
	//Rotation*=RotationY(0.01f);
	Rotation = CQuaternion(AXIS_Z,target->Position.FFY(0)-Position);
	//Velocity = Normalize( Dot(Velocity,target->Position))*0.1f;
	Velocity = Normalize(target->Position.FFY(0) - Position)*0.1f;
	Position += Velocity;
}

