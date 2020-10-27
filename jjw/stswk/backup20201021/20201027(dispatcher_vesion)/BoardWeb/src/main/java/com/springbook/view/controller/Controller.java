package com.springbook.view.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.springbook.view.board.GetBoardController;

public interface Controller	{
	String handleRequest(HttpServletRequest request, HttpServletResponse response);
}