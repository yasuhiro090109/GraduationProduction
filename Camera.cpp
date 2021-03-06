#include "Main.h"

// カメラの初期化
void CCamera::Reset() {
}

// カメラの移動
void CCamera::Move()
{
	if( Oculus[0] ) {
		Rotation = Oculus[0].Rotation;
		Position += Key[0].Direction().XFY( 0 )*Camera->Rotation*0.2f;
	} else {
		CVector v = MouseState[0].Movement;
		Rotation *= CQuaternion( AxisX(), MouseState[0].Movement.Y*-0.001f );
		Rotation *= CQuaternion( AXIS_Y, MouseState[0].Movement.X*0.001f );
	}

}
