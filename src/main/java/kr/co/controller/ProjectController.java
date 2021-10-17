package kr.co.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.domain.CommunicationVO;
import kr.co.domain.Criteria;
import kr.co.domain.MobileVO;
import kr.co.domain.PageDTO;
import kr.co.domain.ProgressVO;
import kr.co.domain.ProjectVO;
import kr.co.domain.QualityCodeVO;
import kr.co.domain.QualityVO;
import kr.co.domain.RiskVO;
import kr.co.domain.ScheduleVO;
import kr.co.service.ProjectService;

@Controller
@RequestMapping("/project")
public class ProjectController {
	
	@Autowired
	ProjectService pService;
	
	@RequestMapping(value = "/main" ,method = RequestMethod.GET)
	public void main() {
	}
	
	//기본정보 창
	@RequestMapping(value = "/basic_info_insert", method = RequestMethod.GET)
	public void basic_info_insert() {
		
	}
	
	//기본정보 등록
	@RequestMapping(value = "/basic_info_insert", method = RequestMethod.POST)
	public String basic_info_insert(ProjectVO vo) {
		
		pService.basic_info_insert(vo);
		
		return "redirect:/project/main";
	}

	//모바일
    @RequestMapping(value = "mobile_insert", method = RequestMethod.GET)
    public void mobile_insert(Model model) {
       
       List<ProjectVO> list = new ArrayList<ProjectVO>();
       list = pService.PJlist();
       
       List<ProgressVO> rangeList = new ArrayList<ProgressVO>();
       rangeList = pService.rangeList();
       
       List<QualityVO> quaList = new ArrayList<QualityVO>();
       quaList = pService.quaList();
       
       List<RiskVO> riskList = new ArrayList<RiskVO>();
       riskList = pService.riskList();
       
       model.addAttribute("list", list);
       model.addAttribute("rangeList", rangeList);
       model.addAttribute("quaList", quaList);
       model.addAttribute("riskList", riskList);
       
    }
    
    //모바일 등록
    @RequestMapping(value = "mobile_insert", method = RequestMethod.POST)
    public String  mobile_insert(MobileVO vo) {
       
       pService.mobile_insert(vo);
       
       return "redirect:/project/main";
       
    }   
	
	//공지사항 창
	@RequestMapping(value = "/communication", method = RequestMethod.GET)
	public String communication(Model model) {
		CommunicationVO noticeNo = pService.noticeNo();
		CommunicationVO conferenceNo = pService.conferenceNo();
		CommunicationVO freeBoardNo = pService.freeBoardNo();
		
		model.addAttribute("noticeNo", noticeNo);
		model.addAttribute("conferenceNo", conferenceNo);
		model.addAttribute("freeBoardNo", freeBoardNo);
		
		return "/project/communication";
	}
	
	//공지사항 등록
	@RequestMapping(value = "/communication", method = RequestMethod.POST)
	public String communication_insert(CommunicationVO vo) {
		pService.communication_insert(vo);
		
		return "redirect:/project/main";
	}
	
	//인력관리 창
	@RequestMapping(value = "org_insert", method = RequestMethod.GET)
	public void org_insert() {
		
	}
	
	
	//산출물관리 리스트
	@RequestMapping(value = "/outputs_list", method = RequestMethod.GET)
	public void Outputs_list(Criteria cri, Model model) {
		model.addAttribute("Outputs_list",pService.getlist(cri));
		int total = pService.getTotal(cri);
		model.addAttribute("pageMaker", new PageDTO(cri, total));
	}
	
	
	//진척관리 창
	@RequestMapping(value = "progress_insert", method = RequestMethod.GET)
	public void progress_insert(Model model) {
		
		List<ProjectVO> list = new ArrayList<ProjectVO>();
		list = pService.PJlist();
		
		model.addAttribute("list", list);
		
	}
	
	//진척관리 등록
	@RequestMapping(value = "progress_insert", method = RequestMethod.POST)
	public String progress_insert(ProgressVO vo) {
		
		pService.progress_insert(vo);
		
		return "redirect:/project/progress_list";
		
	}
	
	//진척관리 리스트
	@RequestMapping(value = "progress_list", method = RequestMethod.GET)
	public void progress_list(Model model) {
		
		List<ProgressVO> list = new ArrayList<ProgressVO>();
		list = pService.progress_list();
		
		model.addAttribute("list", list);
		
	}
	
	//진척관리 읽기
	@RequestMapping(value = "progress_read/{pjName}", method = RequestMethod.GET)
	public String progress_read(Model model, @PathVariable("pjName") String pjName) {
		
		ProgressVO vo = pService.progress_read(pjName);
		
		model.addAttribute("vo", vo);
		
		return "/project/progress_read";
		
	}
	
	//진척관리 수정 get
	@RequestMapping(value = "/progress_update/{pjName}", method = RequestMethod.GET)
	public String progress_update(Model model, @PathVariable("pjName") String pjName) {
		
		ProgressVO vo = pService.progress_read(pjName);
				
		model.addAttribute("vo", vo);
		
		return "/project/progress_update";
	}
	
	//진척관리 수정 post
	@RequestMapping(value = "/progress_update", method = RequestMethod.POST, produces = "application/text; charset=utf-8")
	public String progress_update(ProgressVO vo) {
		
		pService.progress_update(vo);
		/* "redirect:/project/progress_read/"+vo.getPjName(); */
		return "redirect:/project/progress_list";
		}
	
	@RequestMapping(value = "/progress_delete/{pjName}", method = RequestMethod.POST)
	public String progress_delete(@PathVariable("pjName") String pjName) {
		
		pService.progress_delete(pjName);
		
		return "redirect:/project/progress_list";
	}
	//품질
	@RequestMapping(value = "quality_insert", method = RequestMethod.GET)
	public void quality_insert(Model model) {
		List<ProjectVO> list = new ArrayList<ProjectVO>();
		list = pService.PJlist();
		model.addAttribute("list", list);
	}
	
	//품질 등록
	@RequestMapping(value = "quality_insert", method = RequestMethod.POST)
	public String quality_insert(QualityVO vo) {
		
			pService.quality_insert(vo);
		
		return "redirect:/project/main";
	}
	
	//품질 팝업
	@RequestMapping(value = "qualityPopUp", method = RequestMethod.GET)
	public void qualityPopUp(Model model) {
		List<QualityCodeVO> list = new ArrayList<QualityCodeVO>();
		list = pService.QuaCodeList();
		model.addAttribute("list", list);
		
	}
	
	//리스크 창
	@RequestMapping(value = "risk_insert", method = RequestMethod.GET)
	public void risk_insert(Model model) {
		List<ProjectVO> list = new ArrayList<ProjectVO>();
		list = pService.PJlist();
		
		model.addAttribute("list", list);
		
	}
	
	//리스크 등록
	@RequestMapping(value = "risk_insert", method = RequestMethod.POST)
	public String risk_insert(RiskVO rVo) {
		
		pService.risk_insert(rVo);
		
		return "redirect:/project/main";
	}
	
	//일정관리 화면
	@RequestMapping(value = "schedule_insert", method = RequestMethod.GET)
	public void schedule_insert(Model model) {
		List<ProjectVO> list = new ArrayList<ProjectVO>();
		list = pService.PJlist();
		model.addAttribute("list" , list);
	}
	
	//일정관리 등록
	@RequestMapping(value = "schedule_insert", method = RequestMethod.POST)
	public String schedule_insert(ScheduleVO vo) {
		
		pService.schedule_insert(vo);
		return "redirect:/project/main";
	}
	

   
   //사업관리 창
   @RequestMapping(value = "business_list", method = RequestMethod.GET)
   public void business_list() {
      
   }


}
