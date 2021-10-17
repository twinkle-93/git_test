package kr.co.domain;

import java.io.Serializable;
import java.sql.Date;

public class CommunicationVO implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private Date regDate;
	private String writer;
	private String category;
	private int noticeNo;
	private String noticeTitle;
	private String noticeContents;
	private int conferenceNo;
	private String conferenceTitle;
	private String conferenceContents;
	private int freeBoardNo;
	private String freeBoardTitle;
	private String freeBoardContents;
	
	public CommunicationVO() {
		// TODO Auto-generated constructor stub
	}

	public CommunicationVO(Date regDate, String writer, String category, int noticeNo, String noticeTitle,
			String noticeContents, int conferenceNo, String conferenceTitle, String conferenceContents, int freeBoardNo,
			String freeBoardTitle, String freeBoardContents) {
		super();
		this.regDate = regDate;
		this.writer = writer;
		this.category = category;
		this.noticeNo = noticeNo;
		this.noticeTitle = noticeTitle;
		this.noticeContents = noticeContents;
		this.conferenceNo = conferenceNo;
		this.conferenceTitle = conferenceTitle;
		this.conferenceContents = conferenceContents;
		this.freeBoardNo = freeBoardNo;
		this.freeBoardTitle = freeBoardTitle;
		this.freeBoardContents = freeBoardContents;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public int getNoticeNo() {
		return noticeNo;
	}

	public void setNoticeNo(int noticeNo) {
		this.noticeNo = noticeNo;
	}

	public String getNoticeTitle() {
		return noticeTitle;
	}

	public void setNoticeTitle(String noticeTitle) {
		this.noticeTitle = noticeTitle;
	}

	public String getNoticeContents() {
		return noticeContents;
	}

	public void setNoticeContents(String noticeContents) {
		this.noticeContents = noticeContents;
	}

	public int getConferenceNo() {
		return conferenceNo;
	}

	public void setConferenceNo(int conferenceNo) {
		this.conferenceNo = conferenceNo;
	}

	public String getConferenceTitle() {
		return conferenceTitle;
	}

	public void setConferenceTitle(String conferenceTitle) {
		this.conferenceTitle = conferenceTitle;
	}

	public String getConferenceContents() {
		return conferenceContents;
	}

	public void setConferenceContents(String conferenceContents) {
		this.conferenceContents = conferenceContents;
	}

	public int getFreeBoardNo() {
		return freeBoardNo;
	}

	public void setFreeBoardNo(int freeBoardNo) {
		this.freeBoardNo = freeBoardNo;
	}

	public String getFreeBoardTitle() {
		return freeBoardTitle;
	}

	public void setFreeBoardTitle(String freeBoardTitle) {
		this.freeBoardTitle = freeBoardTitle;
	}

	public String getFreeBoardContents() {
		return freeBoardContents;
	}

	public void setFreeBoardContents(String freeBoardContents) {
		this.freeBoardContents = freeBoardContents;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	
}
