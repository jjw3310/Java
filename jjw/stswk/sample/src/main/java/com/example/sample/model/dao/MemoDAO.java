package com.example.sample.model.dao;

import java.util.List;

import com.example.sample.model.dto.MemoDTO;

public interface MemoDAO {
	
	List<MemoDTO> getMemoList();

	void memoInsert(MemoDTO dto);
	
	MemoDTO getMemoDetail(int inx);
	
	void memoUpdate(MemoDTO dto);
	
	void memoDelete(int idx);

}
