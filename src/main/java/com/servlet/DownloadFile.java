package com.servlet;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/download")
public class DownloadFile extends HttpServlet{
public  int Buffer_Size=1024*1000;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String fileName=req.getParameter("fn");
		 String path=getServletContext().getRealPath("")+"imgs"+File.separator+fileName;
		File file=new File(path);
		OutputStream os=null;
		FileInputStream fis=null;
		resp.setHeader("Content-Disposition", String.format("attachment;filename=\"%s\"", file.getName()));
	    resp.setContentType("application/octet-stream");
		if(file.exists())
		{
			os=resp.getOutputStream();
			fis=new FileInputStream(file);
			byte[] bf=new byte[Buffer_Size];
			int byteRead=-1;
			while((byteRead=fis.read(bf))!=-1)
			{
				os.write(bf,0,byteRead);
			}
		}
		else
		{
			resp.setContentType("text/html");
			resp.getWriter().print("<h4>image not found with="+fileName+"<h4>");
		}
	}

}
