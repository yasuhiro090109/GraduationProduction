// ÉuÉçÉbÉN
class CBlock : public CMyMover {
public:
	void* operator new(size_t n) { return BlockList.New(n); }
	void operator delete(void* p) { BlockList.Delete(p); }
	CBlock() : CMyMover(BlockList) {}
	void Reset();
	void Move();
};

