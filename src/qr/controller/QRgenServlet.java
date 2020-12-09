package qr.controller;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.glxn.qrgen.QRCode;
import net.glxn.qrgen.image.ImageType;

public class QRgenServlet extends HttpServlet{

	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		String qrtext = request.getParameter("qrInput");
		ByteArrayOutputStream out = QRCode.from(qrtext).to(ImageType.PNG).withSize(400, 400).stream();
		response.setContentType("image/png");
		response.setContentLength(out.size());
		OutputStream outStream = response.getOutputStream();
		outStream.write(out.toByteArray());
		outStream.flush();
		outStream.close();
	}
}