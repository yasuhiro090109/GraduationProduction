// Ž©‹@
class CPlayer : public CMyMover {
public:
	void* operator new(size_t n) { return PlayerList.New(n); }
	void operator delete(void* p) { PlayerList.Delete(p); }
	CPlayer() : CMyMover(PlayerList) {}
	void Reset();
	void Move();
};

