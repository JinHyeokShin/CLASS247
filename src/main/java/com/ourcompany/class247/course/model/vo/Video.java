package com.ourcompany.class247.course.model.vo;

public class Video {
	
	private int videoCourseNum;
	private int onlineNum;
	private String videoOName;
	private String videoRName;
	private String videoPath;
	private String videoTitle;
	private String videoContent;
	
	public Video() {
		
	}

	public Video(int videoCourseNum, int onlineNum, String videoOName, String videoRName, String videoPath,
			String videoTitle, String videoContent) {
		super();
		this.videoCourseNum = videoCourseNum;
		this.onlineNum = onlineNum;
		this.videoOName = videoOName;
		this.videoRName = videoRName;
		this.videoPath = videoPath;
		this.videoTitle = videoTitle;
		this.videoContent = videoContent;
	}

	public int getVideoCourseNum() {
		return videoCourseNum;
	}

	public void setVideoCourseNum(int videoCourseNum) {
		this.videoCourseNum = videoCourseNum;
	}

	public int getOnlineNum() {
		return onlineNum;
	}

	public void setOnlineNum(int onlineNum) {
		this.onlineNum = onlineNum;
	}

	public String getVideoOName() {
		return videoOName;
	}

	public void setVideoOName(String videoOName) {
		this.videoOName = videoOName;
	}

	public String getVideoRName() {
		return videoRName;
	}

	public void setVideoRName(String videoRName) {
		this.videoRName = videoRName;
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
		return "Video [videoCourseNum=" + videoCourseNum + ", onlineNum=" + onlineNum + ", videoOName=" + videoOName
				+ ", videoRName=" + videoRName + ", videoPath=" + videoPath + ", videoTitle=" + videoTitle
				+ ", videoContent=" + videoContent + ", videoDepth=" + "]";
	}
	
	

}
