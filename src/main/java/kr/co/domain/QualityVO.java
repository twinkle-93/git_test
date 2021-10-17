package kr.co.domain;

import java.io.Serializable;
import java.sql.Date;

public class QualityVO implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String pjId;
	private String pjName;
	private String quaId;
	private String quaName;
	private String quaCode;
	private String quaEvaName;
	private Date quaRegDate;
	private String quaWriter;
	
	public QualityVO() {
		// TODO Auto-generated constructor stub
	}

	public QualityVO(String pjId, String pjName, String quaId, String quaName, String quaCode, String quaEvaName,
			Date quaRegDate, String quaWriter) {
		super();
		this.pjId = pjId;
		this.pjName = pjName;
		this.quaId = quaId;
		this.quaName = quaName;
		this.quaCode = quaCode;
		this.quaEvaName = quaEvaName;
		this.quaRegDate = quaRegDate;
		this.quaWriter = quaWriter;
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

	public String getQuaId() {
		return quaId;
	}

	public void setQuaId(String quaId) {
		this.quaId = quaId;
	}

	public String getQuaName() {
		return quaName;
	}

	public void setQuaName(String quaName) {
		this.quaName = quaName;
	}

	public String getQuaCode() {
		return quaCode;
	}

	public void setQuaCode(String quaCode) {
		this.quaCode = quaCode;
	}

	public String getQuaEvaName() {
		return quaEvaName;
	}

	public void setQuaEvaName(String quaEvaName) {
		this.quaEvaName = quaEvaName;
	}

	public Date getQuaRegDate() {
		return quaRegDate;
	}

	public void setQuaRegDate(Date quaRegDate) {
		this.quaRegDate = quaRegDate;
	}

	public String getQuaWriter() {
		return quaWriter;
	}

	public void setQuaWriter(String quaWriter) {
		this.quaWriter = quaWriter;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	

}
