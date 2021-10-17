package kr.co.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

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

@Repository
public interface projectMapper {

	public void basic_info_insert(ProjectVO vo);

	public void risk_insert(RiskVO rVo);

	public List<ProjectVO> PJlist();

	public void progress_insert(ProgressVO vo);

	public List<ProgressVO> progress_list();

	public ProgressVO progress_read(String pjName);

	public void progress_update(ProgressVO vo);

	public void progress_delete(String pjName);
	
  /* �궛異쒕Ъ  紐⑸줉*/ 
   public List<GetoutputsVO> getList();
   
   /* �럹�씠吏� 泥섎━ */
   public List<GetoutputsVO> getListWithPaging(Criteria cri);
   
   /* �궛異쒕Ъ 寃��깋 */
   public int getTotal(Criteria cri);

   public void schedule_insert(ScheduleVO vo);
   
   public void mobile_insert(MobileVO vo);

   public void quality_insert(QualityVO vo);

   public void qualityPopUp_insert(QualityVO vo);
   
   public ProjectVO qualityPopUp(String pjName);

   public List<QualityCodeVO> QuaCodeList();

   public void communication_insert(CommunicationVO vo);
   
   public List<ProgressVO> rangeList();
	
   public List<QualityVO> quaList();
	
   public List<RiskVO> riskList();

   public CommunicationVO noticeNo();
   
   public CommunicationVO conferenceNo();
   
   public CommunicationVO freeBoardNo();


	
}
