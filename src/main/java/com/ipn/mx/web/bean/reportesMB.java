/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ipn.mx.web.bean;

import com.ipn.mx.modelo.dao.UsuarioDAO;
import java.io.File;
import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;
import javax.faces.context.FacesContext;
import javax.faces.event.ActionEvent;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperRunManager;



/**
 *
 * @author starl
 */
//@Named(value = "reportesMB")
@ManagedBean
@RequestScoped
public class reportesMB {

    /**
     * Creates a new instance of reportesMB
     */
    public reportesMB() {
    }
    
    public  void verPDF(ActionEvent actionEvent) throws Exception{
         UsuarioDAO dao = new UsuarioDAO();
        File jasper = new File(FacesContext.getCurrentInstance().getExternalContext().getRealPath("/reportes/ReporteEntradaH.jasper"));
         byte[] bytes = JasperRunManager.runReportToPdf(jasper.getPath(),null,dao.conecta());
         HttpServletResponse response = (HttpServletResponse) FacesContext.getCurrentInstance().getExternalContext().getResponse();
         response.setContentType("application/pdf");
         response.setContentLength(bytes.length);
         ServletOutputStream outputStream = response.getOutputStream();
         outputStream.write(bytes,0,bytes.length);
         outputStream.flush();
         outputStream.close();
         
         FacesContext.getCurrentInstance().responseComplete();
    }
    
    public  void dowload(ActionEvent actionEvent) throws Exception{
         UsuarioDAO dao = new UsuarioDAO();
        File jasper = new File(FacesContext.getCurrentInstance().getExternalContext().getRealPath("/reportes/ReporteEntradaH.jasper"));
        JasperPrint jasperPrint = JasperFillManager.fillReport(jasper.getPath(),null,dao.conecta());
        HttpServletResponse response = (HttpServletResponse) FacesContext.getCurrentInstance().getExternalContext().getResponse();
        response.addHeader("Content-disposition", "attachment; filename-jsfreporte.pdf");
        try (ServletOutputStream stream = response.getOutputStream()) {
            JasperExportManager.exportReportToPdfStream(jasperPrint,stream);
            stream.flush();
            FacesContext.getCurrentInstance().responseComplete();
        }
        
        catch (IOException | JRException  ex) {
            Logger.getLogger(reportesMB.class.getName()).log(Level.SEVERE, null, ex);
        }
    
    }
    
}
