package by.maximchikova.tl;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;
import java.io.IOException;

public class Submit extends TagSupport {

    private String type;

    public void setType(String type) {
        this.type = type;
    }

    @Override
    public int doStartTag() throws JspException {
        String tag = "";
        switch(type) {
            case "register": {
                tag = "<input type=submit value=\"Register\"/>";
                break;
            }
            case "login": {
                tag = "<input type=submit value=\"Login\"/>";
                break;
            }
        }
        try {
            pageContext.getOut().write(tag);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return SKIP_BODY;
    }

    @Override
    public int doEndTag() throws JspException {
        return EVAL_PAGE;
    }
}
