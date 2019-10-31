package com.ourcompany.class247.course.model.vo;

public class Video {

	
	private int videoCourse; 
	private int onlineNum;
	private String videoOname;
	private String videoRname;
	private String videoPath;
	private String videoTitle;
	private String videoContent;
	
	public Video() {}
	
	public Video(int onlineNum, String videoPath, String videoTitle, String videoContent) {
		super();
		this.onlineNum = onlineNum;
		this.videoPath = videoPath;
		this.videoTitle = videoTitle;
		this.videoContent = videoContent;
	}
	
	public Video(int videoCourse, int onlineNum, String videoOname, String videoRname, String videoPath,
			String videoTitle, String videoContent) {
		super();
		this.videoCourse = videoCourse;
		this.onlineNum = onlineNum;
		this.videoOname = videoOname;
		this.videoRname = videoRname;
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

	public int getOnlineNum() {
		return onlineNum;
	}

	public void setOnlineNum(int onlineNum) {
		this.onlineNum = onlineNum;
	}

	public String getVideoOname() {
		return videoOname;
	}

	public void setVideoOname(String videoOname) {
		this.videoOname = videoOname;
	}

	public String getVideoRname() {
		return videoRname;
	}

	public void setVideoRname(String videoRname) {
		this.videoRname = videoRname;
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
		return "Video [videoCourse=" + videoCourse + ", onlineNum=" + onlineNum + ", videoOname=" + videoOname
				+ ", videoRname=" + videoRname + ", videoPath=" + videoPath + ", videoTitle=" + videoTitle
				+ ", videoContent=" + videoContent + "]";
	}
	
	
	
	

}
