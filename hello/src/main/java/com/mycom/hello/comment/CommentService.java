package com.mycom.hello.comment;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CommentService {

	@Autowired
	private CommentRepository commentRepository;

	public void save(CommentDTO commentDTO) {
		commentRepository.save(commentDTO);

	}

	public List<CommentDTO> findAll(Long boardId) {
		return commentRepository.findAll(boardId);
	}
}
