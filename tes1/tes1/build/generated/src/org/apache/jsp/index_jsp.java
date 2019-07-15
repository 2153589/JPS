package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<style>\n");
      out.write("     .img{\n");
      out.write("            float: right;\n");
      out.write("            margin-bottom: 150px;\n");
      out.write("            margin-right: 500px;\n");
      out.write("        }\n");
      out.write("</style>\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"ie=edge\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/index.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/contact.css\">\n");
      out.write("    <title>SAMCIS | HOME PAGE</title>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    <header>\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div id=\"title\">\n");
      out.write("                <h1>SAMCIS Portal</h1>\n");
      out.write("            </div>\n");
      out.write("                <nav>\n");
      out.write("                    <ul>\n");
      out.write("                        <li><a href=\"\">HOME</a></li>\n");
      out.write("                        <li><a href=\"admission.jsp\">ADMISSION</a></li>\n");
      out.write("                        <li><a href=\"campus.jsp\">CAMPUS LIFE</a></li>\n");
      out.write("                        <li><a href=\"contact.jsp\">CONTACT US</a></li>\n");
      out.write("                    </ul>\n");
      out.write("               </nav>\n");
      out.write("        </div>\n");
      out.write("    </header>\n");
      out.write("\n");
      out.write("    <section id=\"showcase\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div id=\"slider\">\n");
      out.write("                <figure>\n");
      out.write("                    <h1>Vission and Mission</h1>\n");
      out.write("                    <p>Saint Louis Univesity is an excellent missionary \n");
      out.write("                        <br>\n");
      out.write("                        and transformative educational institution that \n");
      out.write("                        <br>\n");
      out.write("                        zealous in devolping human resource to be created,\n");
      out.write("                        <br>\n");
      out.write("                        competent, socially involed, and imbued with the Chirstian Spirit.\n");
      out.write("                    </p>\n");
      out.write("                </figure>\n");
      out.write("                 <div class=\"img\">\n");
      out.write("            <img src=\"C:\\Users\\d524lab\\Desktop\\Test\\web\\images\\Maryheights.jpg\" width=\"250\" height=\"250\" alt=\"img\"/>\n");
      out.write("        </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("       \n");
      out.write("        </section>\n");
      out.write("\n");
      out.write("   \n");
      out.write("</body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
