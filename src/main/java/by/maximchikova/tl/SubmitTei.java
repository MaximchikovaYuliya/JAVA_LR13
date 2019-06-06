package by.maximchikova.tl;

import javax.servlet.jsp.tagext.TagData;
import javax.servlet.jsp.tagext.TagExtraInfo;

public class SubmitTei extends TagExtraInfo {
    @Override
    public boolean isValid(TagData data) {
        Object o = data.getAttribute("type");
        if (o != null && o != TagData.REQUEST_TIME_VALUE) {
            if (o.toString().toLowerCase().equals("register")
                    || o.toString().toLowerCase().equals("login"))
                return true;
            else
                return false;
        } else
            return true;
    }
}
