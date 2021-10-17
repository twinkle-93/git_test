package kr.co.domain;

import java.io.Serializable;
import java.sql.Date;

public class ScheduleVO implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private int no;
	private String pjId;
	private String pjName;
	private String scId;
	private String scName;
	private Date scRegDate;
	private String scWriter;
	private String msId;
	private String msName;
	private String upMs;
	private String downMs;
	private Date msRegDate;
	private String msWriter;
	
	public ScheduleVO() {
		// TODO Auto-generated constructor stub
	}

	public ScheduleVO(int no, String pjId, String pjName, String scId, String scName, Date scRegDate, String scWriter,
			String msId, String msName, String upMs, String downMs, Date msRegDate, String msWriter) {
		super();
		this.no = no;
		this.pjId = pjId;
		this.pjName = pjName;
		this.scId = scId;
		this.scName = scName;
		this.scRegDate = scRegDate;
		this.scWriter = scWriter;
		this.msId = msId;
		this.msName = msName;
		this.upMs = upMs;
		this.downMs = downMs;
		this.msRegDate = msRegDate;
		this.msWriter = msWriter;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
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

	public String getScId() {
		return scId;
	}

	public void setScId(String scId) {
		this.scId = scId;
	}

	public String getScName() {
		return scName;
	}

	public void setScName(String scName) {
		this.scName = scName;
	}

	public Date getScRegDate() {
		return scRegDate;
	}

	public void setScRegDate(Date scRegDate) {
		this.scRegDate = scRegDate;
	}

	public String getScWriter() {
		return scWriter;
	}

	public void setScWriter(String scWriter) {
		this.scWriter = scWriter;
	}

	public String getMsId() {
		return msId;
	}

	public void setMsId(String msId) {
		this.msId = msId;
	}

	public String getMsName() {
		return msName;
	}

	public void setMsName(String msName) {
		this.msName = msName;
	}

	public String getUpMs() {
		return upMs;
	}

	public void setUpMs(String upMs) {
		this.upMs = upMs;
	}

	public String getDownMs() {
		return downMs;
	}

	public void setDownMs(String downMs) {
		this.downMs = downMs;
	}

	public Date getMsRegDate() {
		return msRegDate;
	}

	public void setMsRegDate(Date msRegDate) {
		this.msRegDate = msRegDate;
	}

	public String getMsWriter() {
		return msWriter;
	}

	public void setMsWriter(String msWriter) {
		this.msWriter = msWriter;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	

}
