#pragma once
#include "..\HigPen\HigPen.h"
using namespace higpen;

extern CMoverList 
	StageList, PlayerList, EnemyList, WeaponList, BulletList, 
	EffectList, BlockList, ItemList, CameraList, LightList;

extern int Score;

#include "MyMover.h"
#include "Block.h"
#include "Bullet.h"
#include "Camera.h"
#include "Effect.h"
#include "Enemy.h"
#include "Item.h"
#include "Light.h"
#include "Player.h"
#include "Stage.h"
#include "Weapon.h"

extern CCamera* Camera;

