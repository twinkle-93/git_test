package kr.co.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.dao.projectMapper;
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

@Service
public class ProjectServiceImpl implements ProjectService{
	
	@Autowired
	projectMapper pDao;

	@Override
	public void basic_info_insert(ProjectVO vo) {
		
		pDao.basic_info_insert(vo);
	}

	@Override
	public void risk_insert(RiskVO rVo) {
		
		pDao.risk_insert(rVo);
		
	}

	@Override
	public List<ProjectVO> PJlist() {
		
		return pDao.PJlist();
		
	}

	@Override
	public void progress_insert(ProgressVO vo) {
		
		pDao.progress_insert(vo);
		
	}

	@Override
	public List<ProgressVO> progress_list() {
		
		return pDao.progress_list();
		
	}

	@Override
	public ProgressVO progress_read(String pjName) {

		return pDao.progress_read(pjName);
		
	}

	@Override
	public void progress_update(ProgressVO vo) {
		pDao.progress_update(vo);
		
	}

	@Override
	public void progress_delete(String pjName) {
		pDao.progress_delete(pjName);
	}
	
	/* 모바일 등록 */
   @Override
   public void mobile_insert(MobileVO vo) {
      // TODO Auto-generated method stub
      pDao.mobile_insert(vo);
   }
	
	@Override
	public List<GetoutputsVO> getlist() {
	      // TODO Auto-generated method stub
	  return pDao.getList();
	   }

   @Override
   public List<GetoutputsVO> getlist(Criteria cri) {
      // TODO Auto-generated method stub
      return pDao.getListWithPaging(cri);
   }

   @Override
   public int getTotal(Criteria cri) {
      // TODO Auto-generated method stub
      return pDao.getTotal(cri);
   }

	@Override
	public void schedule_insert(ScheduleVO vo) {
		pDao.schedule_insert(vo);
		
	}

	@Override
	public void quality_insert(QualityVO vo) {
		// TODO Auto-generated method stub
		pDao.quality_insert(vo);
	}

	@Override
	public void qualityPopUp_insert(QualityVO vo) {
		// TODO Auto-generated method stub
		pDao.qualityPopUp_insert(vo);
	}

	@Override
	public ProjectVO qualityPopUp(String pjName) {
		// TODO Auto-generated method stub
		return pDao.qualityPopUp(pjName);
	}

	@Override
	public List<QualityCodeVO> QuaCodeList() {
		// TODO Auto-generated method stub
		return pDao.QuaCodeList();
	}

	@Override
	public void communication_insert(CommunicationVO vo) {
		pDao.communication_insert(vo);
	}

	@Override
	public List<ProgressVO> rangeList() {
		// TODO Auto-generated method stub
		return pDao.rangeList();
	}

	@Override
	public List<QualityVO> quaList() {
		// TODO Auto-generated method stub
		return pDao.quaList();
	}

	@Override
	public List<RiskVO> riskList() {
		// TODO Auto-generated method stub
		return pDao.riskList();
	}

	@Override
	public CommunicationVO noticeNo() {
		// TODO Auto-generated method stub
		return pDao.noticeNo();
	}
	
	@Override
	public CommunicationVO conferenceNo() {
		// TODO Auto-generated method stub
		return pDao.conferenceNo();
	}
	
	@Override
	public CommunicationVO freeBoardNo() {
		// TODO Auto-generated method stub
		return pDao.freeBoardNo();
	}


}
