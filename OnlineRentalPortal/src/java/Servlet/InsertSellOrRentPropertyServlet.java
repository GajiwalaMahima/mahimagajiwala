/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import ManageData.InsertSellOrRentPropertyDAO;
import ManageData.RegisterUserBean;
import ManageData.propertydetailsBean;
import ManageData.propertylocationBean;
import ManageData.sellorrentpropertyBean;
import static com.sun.corba.se.spi.presentation.rmi.StubAdapter.request;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;


/**
 *
 * @author YOGESHKUMAR MEHTA
 */
@WebServlet("/WebContent/InsertSellOrRentPropertyServlet")
@MultipartConfig(fileSizeThreshold = 1024*1024*2, 
    maxFileSize=1024*1024*10, maxRequestSize=1024*1024*50)
//@MultipartConfig(fileSizeThresold = 1024 * 1024 * 2,
//        maxFileSize = 1024 * 1024 * 10,
//        maxRequestSize = 1024 * 1024 * 50)
public class InsertSellOrRentPropertyServlet extends HttpServlet {
   
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String BasicDetails = request.getParameter("BasicDetails");
        String LocationDetails = request.getParameter("LocationDetails");
        String PropertyDetails = request.getParameter("PropertyDetails");
        HttpSession session = request.getSession();
        RegisterUserBean currentuser = null;
        if(session.getAttribute("CurrentUser")!= null){
              currentuser = (RegisterUserBean)(session.getAttribute("CurrentUser"));
        }
        if(BasicDetails!=null){
            try{
                sellorrentpropertyBean obj = new sellorrentpropertyBean(); 
                obj.setRegisterUserID(currentuser.getRegisterUserID());
                String UserTypeInternalCode = request.getParameter("cmbUserType");
                String ListPropertyForID = request.getParameter("cmbListPropertyFor");
                String PropertyTypeInternalCode = request.getParameter("cmbPropertyType"); 
                String PropertiesBelongsToTypeID = request.getParameter("cmbPropertiesBelongToType"); 
                try{

                 obj.setUserTypeInternalCode(Integer.parseInt(UserTypeInternalCode));
                 obj.setListPropertyForID(Integer.parseInt(ListPropertyForID));
                 obj.setPropertyTypeInternalCode(Integer.parseInt(PropertyTypeInternalCode));
                 obj.setPropertiesBelongsToTypeID(Integer.parseInt(PropertiesBelongsToTypeID));
                }
                catch(Exception ex2){
                    ex2.printStackTrace();
                }
                 System.out.println("Current user is " + currentuser.getRegisterUserID());
                 InsertSellOrRentPropertyDAO.InsertBasicDetails(obj);
                 response.sendRedirect("WebContent/InsertSellOrRentProperty.jsp");
            }
            catch(Exception ex){
                ex.printStackTrace();
            }
        }
        else if(LocationDetails!=null){
           propertylocationBean pob = new propertylocationBean();
           try{
               pob.setRegisterUserID(currentuser.getRegisterUserID());
               pob.setCity(request.getParameter("txtCity"));
               pob.setState(request.getParameter("txtState"));
               pob.setProjectName(request.getParameter("txtProjectName"));
               pob.setAddress(request.getParameter("txtAddress"));
               InsertSellOrRentPropertyDAO.InsertLocationDetails(pob);
               response.sendRedirect("WebContent/InsertSellOrRentProperty.jsp");
           }
           catch(Exception ex3){
               ex3.printStackTrace();
           }
        }
        else if(PropertyDetails!=null){
            propertydetailsBean pd = new propertydetailsBean();
            try{
                String SuperBuildUpArea = request.getParameter("txtSuperBuildUpArea");
                String AreaUnitForSuperBuildUp = request.getParameter("cmbAreaUnitForSuperBuildUp");
                String BuildUpArea = request.getParameter("txtBuildUpArea");
                String cmbBuildUpArea = request.getParameter("cmbBuildUpArea");
                String txtCarpetArea = request.getParameter("txtCarpetArea");
                String cmbCarpetArea = request.getParameter("cmbCarpetArea");
                String cmbBedrooms = request.getParameter("cmbBedrooms");
                String cmbBathrooms = request.getParameter("cmbBathrooms");
                String cmbBalconie = request.getParameter("cmbBalconie");
                String cmbTotalFloors = request.getParameter("cmbTotalFloors");
                String IsParkingAvailable = request.getParameter("IsParkingAvailable");
                String cmbPropertyAvailability = request.getParameter("cmbPropertyAvailability");
                String cmbOwnership = request.getParameter("cmbOwnership");
                String cmbAgeOfProperty = request.getParameter("cmbAgeOfProperty");
                String txtExpectedPrice = request.getParameter("txtExpectedPrice");
                
                try{
                    pd.setCreatedBySystemUserID(currentuser.getRegisterUserID());
                    pd.setSuperBuildUpArea(Integer.parseInt(SuperBuildUpArea));
                    pd.setAreaUnitForSuperBuildUp(Integer.parseInt(AreaUnitForSuperBuildUp));
                    pd.setBuildUpArea(Integer.parseInt(BuildUpArea));
                    pd.setAreaUnitForBuildUp(Integer.parseInt(cmbBuildUpArea));
                    pd.setCarpetArea(Integer.parseInt(txtCarpetArea));
                    pd.setAreaUnitForCarpet(Integer.parseInt(cmbCarpetArea));
                    pd.setBedRooms(Integer.parseInt(cmbBedrooms));
                    pd.setBathRooms(Integer.parseInt(cmbBathrooms));
                    pd.setBalconies(Integer.parseInt(cmbBalconie));
                    pd.setTotalFloors(Integer.parseInt(cmbTotalFloors));
                    pd.setIsParkingAvailable(Integer.parseInt(IsParkingAvailable));
                    pd.setPropertyAvailabilityInternalCode(Integer.parseInt(cmbPropertyAvailability));
                    pd.setAgeOfProperty(Integer.parseInt(cmbAgeOfProperty));
                    pd.setOwnerShipInternalCode(Integer.parseInt(cmbOwnership));
                    pd.setExpectedPrice(Double.parseDouble(txtExpectedPrice));
                    InsertSellOrRentPropertyDAO.InsertPropertyDetails(pd);
                    response.sendRedirect("WebContent/InsertSellOrRentProperty.jsp");
                    
                }
                catch(Exception ex){
                    ex.printStackTrace();
                }
                
            }
            catch(Exception ex4){
                ex4.printStackTrace();
            }
        }
        else {
            try{
               sellorrentpropertyBean obj = new sellorrentpropertyBean();
               int i=0;
                for(Part part : request.getParts()){
                    String fileName = extractFileName(part);
                    String savePath = "Upload/" + fileName;
                    File fileSaveDir = new File(savePath);
                    if(i==0)
                        obj.setImage1(savePath);
                    else if(i==1)
                        obj.setImage2(savePath);
                    else if(i==2)
                        obj.setImage3(savePath);
                    i++;
                }
                
            String amenities[] = request.getParameterValues("amenities");
            String txtDescription = request.getParameter("txtDescription");
            String am ="";
            for(String s : amenities){
               am = am + s + ',';
            }
                obj.setAmenitiesInternalCodes(am.substring(0, am.length()-1));
                obj.setDescription(txtDescription);
                obj.setLastModifiedBySystemUserID(currentuser.getRegisterUserID());
                InsertSellOrRentPropertyDAO.UpdatePropertyFeatures(obj);
                response.sendRedirect("WebContent/Home.jsp");
            }
            catch(Exception ex){
                ex.printStackTrace();
            }
          //Send savePath in db;
        }
    }
    
    private String extractFileName(Part part){
        String contentDisp = part.getHeader("content-disposition");
        String[] items = contentDisp.split(";");
        for(String s : items){
            if(s.trim().startsWith("filename")){
                return s.substring(s.indexOf("=") + 2, s.length() -1);
            }
        }
        return "";
    }
   
   

 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
