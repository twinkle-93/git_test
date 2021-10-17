package kr.co.domain;

import java.io.Serializable;

public class QualityCodeVO implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String quaCode;
	private String quaEvaName;
	
	public QualityCodeVO() {
		// TODO Auto-generated constructor stub
	}

	public QualityCodeVO(String quaCode, String quaEvaName) {
		super();
		this.quaCode = quaCode;
		this.quaEvaName = quaEvaName;
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

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	

}
