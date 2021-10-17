package kr.co.service;

import java.util.List;

import kr.co.domain.CommunicationVO;
import kr.co.domain.Criteria;
import kr.co.domain.GetoutputsVO;
import kr.co.domain.ProgressVO;
import kr.co.domain.ProjectVO;
import kr.co.domain.QualityCodeVO;
import kr.co.domain.QualityVO;
import kr.co.domain.RiskVO;
import kr.co.domain.ScheduleVO;
import kr.co.domain.MobileVO;

public interface ProjectService {

	void basic_info_insert(ProjectVO vo);

	void risk_insert(RiskVO rVo);

	List<ProjectVO> PJlist();

	void progress_insert(ProgressVO vo);

	List<ProgressVO> progress_list();

	ProgressVO progress_read(String pjName);

	void progress_update(ProgressVO vo);

	void progress_delete(String pjName);
	
	/* 모바일 등록 */
	void mobile_insert(MobileVO vo);
	
	/* �궛異쒕Ъ 紐⑸줉 */
   List<GetoutputsVO> getlist();

   /* �궛異쒕Ъ �럹�씠吏� 泥섎━ */
   List<GetoutputsVO> getlist(Criteria cri);

   /* �궛異쒕Ъ 寃��깋 */
   int getTotal(Criteria cri);

	void schedule_insert(ScheduleVO vo);

	void quality_insert(QualityVO vo);

	void qualityPopUp_insert(QualityVO vo);

	ProjectVO qualityPopUp(String pjName);

	List<QualityCodeVO> QuaCodeList();

	void communication_insert(CommunicationVO vo);

	List<ProgressVO> rangeList();

	List<QualityVO> quaList();

	List<RiskVO> riskList();

	CommunicationVO noticeNo();
	
	CommunicationVO conferenceNo();
	
	CommunicationVO freeBoardNo();

	
	
}
