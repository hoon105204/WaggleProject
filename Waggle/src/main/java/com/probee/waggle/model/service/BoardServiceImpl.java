package com.probee.waggle.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.probee.waggle.model.dto.HomeDto;
import com.probee.waggle.model.dto.RequestDto;
import com.probee.waggle.model.dto.RequestDto2;
import com.probee.waggle.model.mapper.BoardMapper;

@Service
public class BoardServiceImpl implements BoardService{

	@Autowired
	BoardMapper boardMapper;
	
	@Override
	public List<RequestDto2> selectList() {
		return boardMapper.selectList();
	}

	@Override
	public RequestDto selectRequest(RequestDto dto) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insertRequest(RequestDto2 dto) {
		return boardMapper.insertRequest(dto);
	}

	@Override
	public int deleteRequest(RequestDto dto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateRequest(RequestDto dto) {
		// TODO Auto-generated method stub
		return 0;
	}


}
