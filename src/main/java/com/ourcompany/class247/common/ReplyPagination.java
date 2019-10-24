package com.ourcompany.class247.common;

public class ReplyPagination {
	
	public static PageInfo getPageInfo(int currentPage, int listCount) {
		int pageLimit = 5;
		int maxPage;
		int startPage;
		int endPage;
		int boardLimit = 20; // 한 페이지에 보일 게시글 개수
		
		maxPage = (int)Math.ceil((double)listCount/boardLimit);
		

		if(currentPage == 0) {
			

			
			currentPage = maxPage;
		}
		
		startPage = (currentPage - 1) / pageLimit * pageLimit + 1;
		
		endPage = startPage + pageLimit - 1;
		if(maxPage < endPage) {
			endPage = maxPage;
		}
		
		return new PageInfo(currentPage, listCount, pageLimit, maxPage, startPage, endPage, boardLimit);
	}
}
