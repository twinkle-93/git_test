package kr.co.domain;

import java.io.Serializable;

public class ProgressVO implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String pjId;
	private String pjName;
	private String rangeId;
	private String rangeName;
	private String rangeRegDate;
	private String rangeWriter;
	private String timeId;
	private String timeName;
	private String timeRegDate;
	private String timeWriter;
	
	public ProgressVO() {
		// TODO Auto-generated constructor stub
	}

	public ProgressVO(String pjId, String pjName, String rangeId, String rangeName, String rangeRegDate,
			String rangeWriter, String timeId, String timeName, String timeRegDate, String timeWriter) {
		super();
		this.pjId = pjId;
		this.pjName = pjName;
		this.rangeId = rangeId;
		this.rangeName = rangeName;
		this.rangeRegDate = rangeRegDate;
		this.rangeWriter = rangeWriter;
		this.timeId = timeId;
		this.timeName = timeName;
		this.timeRegDate = timeRegDate;
		this.timeWriter = timeWriter;
	}

	public String getPjId() {
		return pjId;
	}

	public void setPjId(String pjId) {
		this.pjId = pjId;
	}

	public String getPjName() {
		return pjName;
	}

	public void setPjName(String pjName) {
		this.pjName = pjName;
	}

	public String getRangeId() {
		return rangeId;
	}

	public void setRangeId(String rangeId) {
		this.rangeId = rangeId;
	}

	public String getRangeName() {
		return rangeName;
	}

	public void setRangeName(String rangeName) {
		this.rangeName = rangeName;
	}

	public String getRangeRegDate() {
		return rangeRegDate;
	}

	public void setRangeRegDate(String rangeRegDate) {
		this.rangeRegDate = rangeRegDate;
	}

	public String getRangeWriter() {
		return rangeWriter;
	}

	public void setRangeWriter(String rangeWriter) {
		this.rangeWriter = rangeWriter;
	}

	public String getTimeId() {
		return timeId;
	}

	public void setTimeId(String timeId) {
		this.timeId = timeId;
	}

	public String getTimeName() {
		return timeName;
	}

	public void setTimeName(String timeName) {
		this.timeName = timeName;
	}

	public String getTimeRegDate() {
		return timeRegDate;
	}

	public void setTimeRegDate(String timeRegDate) {
		this.timeRegDate = timeRegDate;
	}

	public String getTimeWriter() {
		return timeWriter;
	}

	public void setTimeWriter(String timeWriter) {
		this.timeWriter = timeWriter;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	

}
