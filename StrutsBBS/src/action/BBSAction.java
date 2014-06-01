package action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Article;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import action.form.BBSForm;
import dao.ArticlesDao;

public class BBSAction extends Action {

    private final ArticlesDao articleDao;

    public BBSAction() {
        super();
        this.articleDao = new ArticlesDao();
    }

    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm actionForm,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {

        BBSForm form = (BBSForm) actionForm;

        try {
            // ìoò^
            if (form.getName() != null && !"".equals(form.getName())) {
                articleDao.create(new Article(null, form.getName(), form.getMessage()));
            }

            // ëSåèéÊìæ
            List<Article> articleList = articleDao.getAll();

            request.setAttribute("articles", articleList);

        } catch (Exception e) {
            e.printStackTrace();
        }

        form.clear();

        // ê≥èÌìäçeâÊñ Ç…ëJà⁄
        return mapping.findForward("list");
    }
}
