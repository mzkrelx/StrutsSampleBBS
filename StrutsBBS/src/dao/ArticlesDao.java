package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import model.Article;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class ArticlesDao {

    private final DataSource ds;

    private static final Log LOG = LogFactory.getLog(ArticlesDao.class);

    public ArticlesDao() {
        ds = DaoUtil.getSource();
    }

    public Article get(int id) throws SQLException {
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
            con = ds.getConnection();
            ps = con.prepareStatement("SELECT * FROM articles WHERE id = ?");

            ps.setInt(1, id);
            rs = ps.executeQuery();
            if (!rs.next()) {
                return null;
            }

            return toArticle(rs);

        } catch (SQLException ex) {
            throw ex;
        } finally {
            if (rs != null) {
                rs.close();
            }
            con.close();
        }
    }

    public List<Article> getAll() throws SQLException {
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
            con = ds.getConnection();
            ps = con.prepareStatement("SELECT * FROM articles");
            rs = ps.executeQuery();

            List<Article> list = new ArrayList<Article>();
            while (rs.next()) {
                list.add(toArticle(rs));
            }

            return list;

        } catch (SQLException e) {
            LOG.error(e.getMessage(), e);
            throw e;
        } finally {
            if (rs != null) {
                rs.close();
            }
            con.close();
        }
    }

    private Article toArticle(ResultSet rs) throws SQLException {
        Article article = new Article();
        article.setId(rs.getInt("id"));
        article.setName(rs.getString("name"));
        article.setMessage(rs.getString("message"));

        return article;
    }

    public void create(Article article) throws SQLException {
        Connection con = null;
        PreparedStatement ps = null;

        try {
            con = ds.getConnection();
            ps = con.prepareStatement("INSERT INTO articles (name, message) VALUES (?, ?)");

            ps.setString(1, article.getName());
            ps.setString(2, article.getMessage());
            ps.executeUpdate();

        } catch (SQLException ex) {
            throw ex;
        } finally {
            con.close();
        }
    }

}
