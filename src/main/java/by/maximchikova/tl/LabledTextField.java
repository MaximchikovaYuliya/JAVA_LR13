package by.maximchikova.tl;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;
import java.io.IOException;

@SuppressWarnings("serial")
public class LabledTextField extends TagSupport{

    private String name;
    private String text;
    private String label;

    public void setName(String name) {
        this.name = name;
    }

    public void setText(String text) {
        this.text = text;
    }

    public void setLabel(String label) {
        this.label = label;
    }

    @Override
    public int doStartTag() throws JspException {
        String tag = "<label>" + label + "</label><input type=\"text\" value=" + text + "></input>";
        try {
            JspWriter out  = pageContext.getOut();
            out.write(tag);
        } catch (IOException e) {
            throw new JspException(e.getMessage());
        }
        return SKIP_BODY;
    }

    @Override
    public int doEndTag() throws JspException {
        return EVAL_PAGE;
    }
}
