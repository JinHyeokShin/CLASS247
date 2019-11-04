package com.ourcompany.class247.course.model.vo;

public class Video {

	
	private int videoCourse; 
	private String courseTitle;
	private int rowNum;
	private int courseNum;
	private String videoPath;
	private String videoTitle;
	private String videoContent;
	
	public Video() {}

	public Video(int courseNum, String videoPath, String videoTitle, String videoContent) {
		super();
		this.courseNum = courseNum;
		this.videoPath = videoPath;
		this.videoTitle = videoTitle;
		this.videoContent = videoContent;
	}

	public Video(int videoCourse, int courseNum, String videoPath, String videoTitle, String videoContent) {
		super();
		this.videoCourse = videoCourse;
		this.courseNum = courseNum;
		this.videoPath = videoPath;
		this.videoTitle = videoTitle;
		this.videoContent = videoContent;
	}
	
	

	public Video(int videoCourse, String courseTitle, int courseNum, String videoPath, String videoTitle,
			String videoContent) {
		super();
		this.videoCourse = videoCourse;
		this.courseTitle = courseTitle;
		this.courseNum = courseNum;
		this.videoPath = videoPath;
		this.videoTitle = videoTitle;
		this.videoContent = videoContent;
	}

	
	public Video(int videoCourse, String courseTitle, int rowNum, int courseNum, String videoPath, String videoTitle,
			String videoContent) {
		super();
		this.videoCourse = videoCourse;
		this.courseTitle = courseTitle;
		this.rowNum = rowNum;
		this.courseNum = courseNum;
		this.videoPath = videoPath;
		this.videoTitle = videoTitle;
		this.videoContent = videoContent;
	}

	
	
	public int getVideoCourse() {
		return videoCourse;
	}

	public void setVideoCourse(int videoCourse) {
		this.videoCourse = videoCourse;
	}

	public String getCourseTitle() {
		return courseTitle;
	}

	public void setCourseTitle(String courseTitle) {
		this.courseTitle = courseTitle;
	}

	public int getRowNum() {
		return rowNum;
	}

	public void setRowNum(int rowNum) {
		this.rowNum = rowNum;
	}

	public int getCourseNum() {
		return courseNum;
	}

	public void setCourseNum(int courseNum) {
		this.courseNum = courseNum;
	}

	public String getVideoPath() {
		return videoPath;
	}

	public void setVideoPath(String videoPath) {
		this.videoPath = videoPath;
	}

	public String getVideoTitle() {
		return videoTitle;
	}

	public void setVideoTitle(String videoTitle) {
		this.videoTitle = videoTitle;
	}

	public String getVideoContent() {
		return videoContent;
	}

	public void setVideoContent(String videoContent) {
		this.videoContent = videoContent;
	}

	@Override
	public String toString() {
		return "Video [videoCourse=" + videoCourse + ", courseTitle=" + courseTitle + ", rowNum=" + rowNum
				+ ", courseNum=" + courseNum + ", videoPath=" + videoPath + ", videoTitle=" + videoTitle
				+ ", videoContent=" + videoContent + "]";
	}

	
	
	
	
	

}
