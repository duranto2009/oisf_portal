package com.revesoft.springboot.web.portal;

import com.revesoft.springboot.web.util.ImageUploader;
import com.revesoft.springboot.web.util.PathBuilder;
import com.revesoft.springboot.web.util.Policy;
//import org.apache.log4j.Logger;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/**
 * Created by Bony on 9/20/2017.
 */
@RestController
public class PortalController {

    private static final Logger logger = LoggerFactory.getLogger(PortalController.class);

    @Autowired
    PortalService portalService;
    @Autowired
    ApplicationService applicationService;
    @Autowired
    private ImageUploader imageUploader;

    @Autowired

    ServletContext context;
    public static final String MODULE_NAME = "applications";

    @Value("${base.url}")
    private String baseUrl ;



    @RequestMapping(value = {"portal","/"}, method = RequestMethod.GET)
    public ModelAndView showPortalPage(ModelMap model,HttpServletRequest request)throws Exception {


        ArrayList<StaticContentDTO> data=portalService.getStaticData(1);

        ModelAndView modelAndView = new ModelAndView("portal/newportal");
        modelAndView.addObject("about", data.get(0));
        modelAndView.addObject("standard", data.get(1));
        modelAndView.addObject("protocol", data.get(2));
        modelAndView.addObject("services", data.get(3));
        modelAndView.addObject("core", data.get(4));
        modelAndView.addObject("shared", data.get(5));
        modelAndView.addObject("reg", data.get(6));

        return modelAndView;
    }

    //start: added by forhad
    @RequestMapping(value = "portal/feedback", method = RequestMethod.GET)
    public ModelAndView showFeedbackPage(ModelMap model) {
        ModelAndView modelAndView = new ModelAndView("portal/feedback");
        return modelAndView;
    }

    @RequestMapping(value = "portal/feedback", method = RequestMethod.POST)
    public ModelAndView postFeedbackPage(ModelMap model,
                                         @RequestParam String email,
                                         @RequestParam String subject,
                                         @RequestParam String message) throws Exception {
        int i = 0;
        ModelAndView modelAndView = new ModelAndView();
        MailSender mailSender = new MailSender();
        boolean isSuccess = false;
        FeedbackDTO feedbackDTO = new FeedbackDTO();
        feedbackDTO.setFrom(email);
        feedbackDTO.setSubject(subject);
        feedbackDTO.setMessage(message);
        String from = "oisf.reve@gmail.com";
        String to = email;
        String Subject = "Feedback received";
        String Message = "Dear user your feedback is taken for consideration. further followup will be given via mail ";

        try {
//                applicationService.approveApplicationService(systemId, key, 1);
            mailSender.sendEmail(from, to, Subject, Message);

            isSuccess = applicationService.addFeedback(feedbackDTO);
            if (isSuccess) {
                modelAndView.addObject("success", "true");
            } else {
                modelAndView.addObject("success", "");

            }
        } catch (Exception e) {
            e.printStackTrace();
        }


        modelAndView.setViewName("/portal/feedback");

        return modelAndView;
    }


//end: added by forhad


    @RequestMapping(value = "portal/serviceregistration", method = RequestMethod.GET)
    public ModelAndView showServiceRegistrationPage(ModelMap model) {


        ModelAndView modelAndView = new ModelAndView("portal/serviceregistration");

        return modelAndView;
    }


    @RequestMapping(value = "protest", method = RequestMethod.GET)
    public ModelAndView showProtest(ModelMap model) {


        ModelAndView modelAndView = new ModelAndView("portal/templateportal");

        return modelAndView;
    }

    @RequestMapping(value = "portal/sharedlist", method = RequestMethod.GET)
    public ModelAndView showListPage() {


        ModelAndView modelAndView = new ModelAndView("portal/sharedservicelist");

        ArrayList<ServiceOwnerDTO> serviceOwnerDTOS = portalService.getServiceOwner(Policy.SERVICE_OWNER_TYPE);
        blankAdder(serviceOwnerDTOS);

        modelAndView.addObject("title", "Service Owners");
        modelAndView.addObject("owners", serviceOwnerDTOS);


        return modelAndView;
    }

    private ArrayList<ServiceOwnerDTO> blankAdder(ArrayList<ServiceOwnerDTO> serviceOwnerDTOS) {
        if (serviceOwnerDTOS.size() < 18) {
            for (int i = serviceOwnerDTOS.size(); i < 18; i++) {
                serviceOwnerDTOS.add(new ServiceOwnerDTO());
            }
        }

        return serviceOwnerDTOS;
    }

    @RequestMapping(value = "portal/corelist", method = RequestMethod.GET)
    public ModelAndView showCoreListPage() {

        ArrayList<ServiceOwnerDTO> serviceOwnerDTOS = portalService.getServiceOwner(Policy.CORE_MODULE_TYPE);


        ModelAndView modelAndView = new ModelAndView("portal/corelist");
        blankAdder(serviceOwnerDTOS);

        modelAndView.addObject("title", "Core Services");

        modelAndView.addObject("owners", serviceOwnerDTOS);


        return modelAndView;
    }
    @RequestMapping(value = "portal/guidelines", method = RequestMethod.GET)
    public ModelAndView showGuidelines() {

//        ArrayList<ServiceOwnerDTO> serviceOwnerDTOS = portalService.getServiceOwner(Policy.CORE_MODULE_TYPE);


        ModelAndView modelAndView = new ModelAndView("portal/guidelines");
//        blankAdder(serviceOwnerDTOS);

        modelAndView.addObject("title", "Guidelines");

//        modelAndView.addObject("owners", serviceOwnerDTOS);


        return modelAndView;
    }

    @RequestMapping(value = "portal/coredslist", method = RequestMethod.GET)
    public ModelAndView showDSCoreListPage() {

        ArrayList<ServiceOwnerDTO> serviceOwnerDTOS = portalService.getServiceOwner(Policy.CORE_MODULE_TYPE);


        ModelAndView modelAndView = new ModelAndView("portal/coredslist");
        modelAndView.addObject("title", "Core Services");
//        modelAndView.addObject("owner", data);
        blankAdder(serviceOwnerDTOS);

        modelAndView.addObject("servicetype", "core");

        modelAndView.addObject("owners", serviceOwnerDTOS);


        return modelAndView;
    }

    @RequestMapping(value = "portal/shareddslist", method = RequestMethod.GET)
    public ModelAndView showDSSharedListPage() {

        ArrayList<ServiceOwnerDTO> serviceOwnerDTOS = portalService.getServiceOwner(Policy.SERVICE_OWNER_TYPE);


        ModelAndView modelAndView = new ModelAndView("portal/coredslist");
//        modelAndView.addObject("owner", data);
        blankAdder(serviceOwnerDTOS);

        modelAndView.addObject("title", "Service Owners");
        modelAndView.addObject("servicetype", "Shared");


        modelAndView.addObject("owners", serviceOwnerDTOS);


        return modelAndView;
    }

    @RequestMapping(value = "portal/coreislist", method = RequestMethod.GET)
    public ModelAndView showISCoreListPage() {

        ArrayList<ServiceOwnerDTO> serviceOwnerDTOS = portalService.getServiceOwner(Policy.CORE_MODULE_TYPE);


        ModelAndView modelAndView = new ModelAndView("portal/coreislist");
        modelAndView.addObject("title", "Core Services");
        blankAdder(serviceOwnerDTOS);
        modelAndView.addObject("servicetype", "Core");

        modelAndView.addObject("owners", serviceOwnerDTOS);


        return modelAndView;
    }

    @RequestMapping(value = "portal/sharedislist", method = RequestMethod.GET)
    public ModelAndView showISShareListPage() {

        ArrayList<ServiceOwnerDTO> serviceOwnerDTOS = portalService.getServiceOwner(Policy.SERVICE_OWNER_TYPE);


        ModelAndView modelAndView = new ModelAndView("portal/coreislist");
//        modelAndView.addObject("owner", data);
        blankAdder(serviceOwnerDTOS);
        modelAndView.addObject("title", "Service Owners");
        modelAndView.addObject("servicetype", "Shared");

        modelAndView.addObject("owners", serviceOwnerDTOS);


        return modelAndView;
    }


    @RequestMapping(value = "portal/datastandard", method = RequestMethod.GET)
    public ModelAndView showDSListPage() {

        ModelAndView modelAndView = new ModelAndView("portal/datastandard");
        return modelAndView;
    }


    @RequestMapping(value = "portal/biometricstandard", method = RequestMethod.GET)
    public ModelAndView showBiometricStandardPage() {

        ModelAndView modelAndView = new ModelAndView("portal/biometricstandard");
        return modelAndView;
    }


    @RequestMapping(value = "portal/paymentstandard", method = RequestMethod.GET)
    public ModelAndView showPaymentStandardPage() {

        ModelAndView modelAndView = new ModelAndView("portal/paymentstandard");
        return modelAndView;
    }


    @RequestMapping(value = "portal/ccdsstandard", method = RequestMethod.GET)
    public ModelAndView showCCDSStandardPage() {

        ModelAndView modelAndView = new ModelAndView("portal/ccdsstandard");
        return modelAndView;
    }


    @RequestMapping(value = "portal/intstandard", method = RequestMethod.GET)
    public ModelAndView showISListPage() {

        ModelAndView modelAndView = new ModelAndView("portal/integrationstandard");
        return modelAndView;
    }

    @RequestMapping(value = "portal/securitystandard", method = RequestMethod.GET)
    public ModelAndView showSecurityListPage() {

        ModelAndView modelAndView = new ModelAndView("portal/secustandard");
        return modelAndView;
    }

    @RequestMapping(value = "portal/applicationstandard", method = RequestMethod.GET)
    public ModelAndView showApplicationstandardListPage() {

        ModelAndView modelAndView = new ModelAndView("portal/applicationStandard");
        return modelAndView;
    }

    @RequestMapping(value = "portal/technologystandard", method = RequestMethod.GET)
    public ModelAndView showTechnologystandardListPage() {

        ModelAndView modelAndView = new ModelAndView("portal/technologyStandard");
        return modelAndView;
    }

    @RequestMapping(value = "portal/deploymentPolicy", method = RequestMethod.GET)
    public ModelAndView showDeploymentPolicyListPage() {

        ModelAndView modelAndView = new ModelAndView("portal/deploymentPolicy");
        return modelAndView;
    }

    @RequestMapping(value = "portal/servicelist/{id}", method = RequestMethod.GET)
    @ResponseBody
    public ModelAndView ServicesLists(@PathVariable int id) throws Exception {
        ModelAndView modelAndView = new ModelAndView();


        ArrayList<ServiceListDTO> data = portalService.getServiceList(id);
        modelAndView.addObject("services", data);

        modelAndView.addObject("id", id);
        modelAndView.addObject("urlnames", portalService.getOwner(id));
        modelAndView.addObject("title", "Service Endpoints");
        modelAndView.setViewName("portal/newservicelist");
        return modelAndView;
    }

    @RequestMapping(value = "portal/servicedslist/{id}", method = RequestMethod.GET)
    @ResponseBody
    public ModelAndView ServicesDSLists(@PathVariable int id) throws Exception {
        ModelAndView modelAndView = new ModelAndView();

        ArrayList<ServiceListDTO> data = portalService.getServiceList(id);
        modelAndView.addObject("services", data);
        modelAndView.addObject("id", id);
        modelAndView.addObject("title", "Service Endpoints");
        modelAndView.addObject("urlnames", portalService.getOwner(id));
        modelAndView.setViewName("portal/servicedslist");
        return modelAndView;
    }

    @RequestMapping(value = "portal/serviceislist/{id}", method = RequestMethod.GET)
    @ResponseBody
    public ModelAndView ServicesISLists(@PathVariable int id) throws Exception {
        ModelAndView modelAndView = new ModelAndView();
        ArrayList<ServiceListDTO> data = portalService.getServiceList(id);
        modelAndView.addObject("services", data);
        modelAndView.addObject("id", id);
        modelAndView.addObject("urlnames", portalService.getOwner(id));
        modelAndView.addObject("title", "Service Endpoints");
        modelAndView.setViewName("portal/serviceislist");
        return modelAndView;
    }


    @RequestMapping(value = "portal/servicemeta/{id}", method = RequestMethod.GET)
    @ResponseBody
    public ModelAndView ServicesMeta(@PathVariable int id) throws Exception {
        ModelAndView modelAndView = new ModelAndView();

        ServiceListDTO serviceListDTO = portalService.getServiceDetail(id);
        ArrayList<ServiceFieldsDTO> data = portalService.getInputFieldsDetails(id);
        int size = data.get(0).getIsMandatory();
        ArrayList<Integer> dummy = new ArrayList();
        for (int i = 2; i <= size; i++) {
            dummy.add(i);
        }
        modelAndView.addObject("details", serviceListDTO);

        modelAndView.addObject("urlnames", portalService.getOwner(serviceListDTO.serviceOwnerId));

        modelAndView.addObject("fields", data);

        modelAndView.addObject("loop", dummy);

        modelAndView.setViewName("portal/servicemetadata");
        return modelAndView;
    }

    @RequestMapping(value = "portal/servicedbstandard/{id}", method = RequestMethod.GET)
    @ResponseBody
    public ModelAndView ServicesDBS(@PathVariable int id) throws Exception {
        ModelAndView modelAndView = new ModelAndView();

        ArrayList<ServiceFieldsDTO> data = portalService.getDBFieldsDetails(id);
//        modelAndView.addObject("details",serviceListDTO);
        ServiceListDTO serviceListDTO = portalService.getServiceDetail(id);

        modelAndView.addObject("service", serviceListDTO);

        modelAndView.addObject("urlnames", portalService.getOwner(serviceListDTO.serviceOwnerId));


        modelAndView.addObject("fields", data);

        modelAndView.setViewName("portal/servicedatastandard");
        return modelAndView;
    }

    @RequestMapping(value = "portal/serviceintstandard/{id}", method = RequestMethod.GET)
    @ResponseBody
    public ModelAndView ServicesIS(@PathVariable int id) throws Exception {
        ModelAndView modelAndView = new ModelAndView();

        ArrayList<ServiceFieldsDTO> data = portalService.getDBFieldsDetails(id);
        modelAndView.addObject("field", data);
        ServiceListDTO serviceListDTOs= portalService.getServiceDetail(id);

        modelAndView.addObject("service", serviceListDTOs);

        ServiceListDTO serviceListDTO = portalService.getServiceIntDetail(id);


//        modelAndView.addObject("details",serviceListDTO);
        System.out.println(serviceListDTO.getExampleResponse());
        modelAndView.addObject("urlnames", portalService.getOwner(id));

        modelAndView.addObject("fields", serviceListDTO);


        modelAndView.setViewName("portal/serviceintegrationstandard");
        return modelAndView;
    }


    /// Code Added By Forhad.... :)
    @RequestMapping(value = "portaladd", method = RequestMethod.GET)
    public ModelAndView addForm(HttpServletRequest request, HttpServletResponse response) {
        String url = request.getHeader("Referer");

        ModelAndView modelAndView = new ModelAndView("portal/portaladd");
        modelAndView.addObject("headingeng", "Owner name English");
        modelAndView.addObject("headingbng", "Owner name Bangla");
        modelAndView.addObject("type", 1);
        return modelAndView;
    }

    @RequestMapping(value = "coremodadd", method = RequestMethod.GET)
    public ModelAndView addCore(HttpServletRequest request, HttpServletResponse response) {
        String url = request.getHeader("Referer");
        //Cookie cookie=new Cookie("url",url);
        //response.addCookie(cookie);
        ModelAndView modelAndView = new ModelAndView("portal/portaladd");
        modelAndView.addObject("headingeng", "Module  name English");
        modelAndView.addObject("headingbng", "Module name Bangla");
        modelAndView.addObject("type", 0);
        return modelAndView;
    }

    @RequestMapping(value = "portaladd", method = RequestMethod.POST)
    public RedirectView addDiv(@RequestParam String nameEng, @RequestParam String nameBng, @RequestParam int type) {

        ServiceOwnerDTO serviceOwnerDTO = new ServiceOwnerDTO(nameBng, nameEng, 1, type);
        System.out.println(serviceOwnerDTO.toString());
        portalService.addPortal(serviceOwnerDTO);

        return new RedirectView("portal");


    }


    @RequestMapping(value = "portal/servicereg", method = RequestMethod.GET)
    public ModelAndView servReg(Model model) {
//        ApplicationDTO applicationDTO = new ApplicationDTO();
//        model.addAttribute("appMenuDTO", applicationDTO);
        ModelAndView modelAndView = new ModelAndView("appRegister/newregistration");
        return modelAndView;
    }

    private ApplicationDTO imageUpload(MultipartFile file,String moduelName,ApplicationDTO applicationDTO,HttpServletRequest request){

        logger.error("++++++++++++++++++++++++++++++  start image uplaod +++++++++++++++++++++++++++++++++++++++++");
        logger.debug("===============================================================================================");


        HashMap<Integer,String> mappedPath=new PathBuilder().buildPath(context,moduelName,"webapp");
        //String relativepath=System.getProperty("catalina.base")+ File.separator+

        String filepath=imageUploader.upload(file,mappedPath.get(1),Long.toString(applicationDTO.getId()));
        String relativepath=mappedPath.get(2);
        logger.error("!!!!!!!!!! " + " filePath: " + filepath);
        logger.error("!!!!!!!!!!" + "relativePath: " + relativepath);
        logger.error("baseUrl: " + baseUrl);
        logger.debug("baseUrl: " + baseUrl);


        String pathToDB=baseUrl+"\\"+relativepath+filepath;
//        String pathToDB=getBaseUrl(request)+"\\"+relativepath+filepath;
        logger.error("!!!!!! " + "pathToDB: " + pathToDB);


//       pathToDB = pathToDB.replaceAll("\\\\", File.separator);
        logger.debug("===============================================================================================");
        logger.error("++++++++++++++++++++++++++++++  end image uplaod +++++++++++++++++++++++++++++++++++++++++");

        if(filepath.equals("invalid")){


        } else {
            applicationDTO.setLogoUrl(pathToDB);
        }
        return applicationDTO;

    }

    @RequestMapping(value = "portal/servicereg", method = RequestMethod.POST)
    public ModelAndView appInsert(HttpServletRequest request,
                                  @RequestParam String appname,
                                  @RequestParam("file") MultipartFile file,
                                  @RequestParam String appnamebng,
                                  @RequestParam String link,
                                  @RequestParam String mobile,
                                  @RequestParam String email,
                                  @RequestParam int mechanism,
//                                  @RequestParam String redirect_url,
                                  @RequestParam String default_page_url,
                                  @RequestParam String logout_url
    ) throws Exception {


        // HashMap<Integer,String> uploadPath=new PathBuilder().buildPath(context,MODULE_NAME,"webapp");


        //String pa=absoulatePart;
        Long desig= applicationService.lastId("application_registration");

        ApplicationDTO applicationDTO = new ApplicationDTO();
//        applicationDTO.setId(applicationService.idGenaretor());
        applicationDTO.setId(desig);

        applicationDTO=imageUpload(file,MODULE_NAME,applicationDTO,request);

        applicationDTO.setName(appname);

        applicationDTO.setNameBng(appnamebng);
        applicationDTO.setLink(link);
//        applicationDTO.setRedirect(redirect_url);
        applicationDTO.setStatus(1);
        applicationDTO.setIs_framework(0);
        applicationDTO.setAllowedIP("0");
        applicationDTO.setAppDomainEmail(email);
        applicationDTO.setMobileNo(mobile);
        applicationDTO.setFrameworkID(1);
        applicationDTO.setNotificationFlag(mechanism);
        applicationDTO.setDashShareFlag(1);
        applicationDTO.setCreateDate(LocalDateTime.now().toString());
        applicationDTO.setUpadateDate(LocalDateTime.now().toString());
        applicationDTO.setDefaultPageURL(default_page_url);
        applicationDTO.setLogoutURL(logout_url);
        applicationDTO.setUpdatedBy(1);
        applicationDTO.setCreatedBy(1);


        ModelAndView modelAndView = new ModelAndView(new RedirectView("serviceregistration", true));


        try {
            applicationService.addApplicationService(applicationDTO, desig);
            modelAndView.addObject("success", "true");
        } catch (Exception e) {
            e.printStackTrace();
            modelAndView.addObject("success", "");
        }
//        modelAndView.setViewName("redirect:/serviceregistration");
        return modelAndView;

//        return new RedirectView("serviceregistration");
    }
//

    public static String getBaseUrl(HttpServletRequest request) {
        String scheme = request.getScheme() + "://";
        String serverName = request.getServerName();
        String serverPort = (request.getServerPort() == 80) ? "" : ":" + request.getServerPort();
        String contextPath = request.getContextPath();
        return scheme + serverName + serverPort + contextPath;
    }


    @RequestMapping(value="searchtest", method = RequestMethod.GET)
    public @ResponseBody List<ServiceListDTO>getTags(@RequestParam String tagName){
        List<ServiceListDTO> data = new ArrayList<>();
        data = portalService.getAllServiceList();

        List<ServiceListDTO> result = new ArrayList<>();
        for (ServiceListDTO search : data) {
            if (search.getNameEng().toLowerCase().trim().contains(tagName.toLowerCase())) {
                result.add(search);
            }
        }
        return result;
    }


    @RequestMapping(value = "portal/query", method = RequestMethod.GET)
    public ModelAndView search(@RequestParam String search) throws Exception {
        ArrayList<SearchDTO> data = new ArrayList<>();
        data = portalService.getSearchData(search);

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("searchData", data);
        modelAndView.addObject("searchParam", search);
        modelAndView.setViewName("portal/newsearch");


        return modelAndView;
    }


}




