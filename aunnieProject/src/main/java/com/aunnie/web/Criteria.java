package com.aunnie.web;

public class Criteria {
	private int page; //current page num.
	private int perPageNum;//the number of rows per page.
	private int totalPage;
	private int totalCount;//the number of 'selectAll()'
	private int startPage;//pagination start #.
	private int endPage;//pagination end #.
	private boolean prev;// possible? page-1
	private boolean next;// possible? page+1
	private int startNo; // fisrt element no.
	private int endNo; // last element no.
	private int displayPageNum = 10; //The number of items showing 
	
	public Criteria() {
		this.page=1;
		this.perPageNum=10;
	}
	
	public void setPage(int page) {
		this.page = page;
	}
	
	public int getPage(){
		return page;
	}

	public void setPerPageNum(int perPageNum) {
		this.perPageNum = perPageNum;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
		totalPage = totalCount%perPageNum==0? totalCount/perPageNum: totalCount/perPageNum+1;
		if(page<1) page=1;
		startNo = (page-1)*perPageNum+1;
		endNo = page*perPageNum;
		
		startPage = (page%displayPageNum)!=0?(page/displayPageNum)*displayPageNum+1 : (page/displayPageNum);
		endPage = startPage+displayPageNum-1;
		if(startPage <= displayPageNum) prev=false;
		if(startPage > displayPageNum) prev=true;
		if(endPage== totalPage) next=false;
		if(endPage < totalPage) next=true;
		if(endPage > totalPage){
			endPage = totalPage;
			next=false;
		}
		if(startPage <=0 || startPage-displayPageNum <= 0){
			startPage = 1;
			prev=false;
		}
		
//		System.out.println("총 데이터 수: "+totalCount);
//		System.out.println("한 페이지당 보여줄 게시물 수 : "+perPageNum);
//		System.out.println("필요한 페이지 수: "+totalPage);
//		System.out.println("현재 페이지: "+ page);
//		System.out.println("현재 페이지 게시물 시작 번호 : "+ startNo);
//		System.out.println("현재 페이지 게시물 마지막 번호 : "+ endNo);
//		System.out.println("Pagination 시작 페이지 번호 : "+ startPage);
//		System.out.println("Pagination 마지막 페이지 번호 : "+ endPage);
//		System.out.println("Prev: "+prev);
//		System.out.println("Next: "+next);
	}

	public void setDisplayPageNum(int displayPageNum) {
		this.displayPageNum = displayPageNum;
	}
	
	public int getStartPage() {
		return startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public boolean isPrev() {
		return prev;
	}

	public boolean isNext() {
		return next;
	}

	public int getStartNo() {
		return startNo;
	}

	public int getEndNo() {
		return endNo;
	}
	
	@Override
	public String toString() {
		return "page="+page+" perPageNum="+perPageNum+" startNo="+getStartNo()+
				" endNo="+getEndNo() +" startPage="+getStartPage()+" endPage="+getEndPage();
	}
}
