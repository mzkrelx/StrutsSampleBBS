package dao;

import javax.sql.DataSource;

import org.apache.commons.dbcp.BasicDataSource;

import util.PropertiesUtil;

public class DaoUtil {

    private final DataSource ds;

    /** �V���O���g���i�B��j�̃C���X�^���X */
    private static DaoUtil self = new DaoUtil();

    private static final String DB_DRIVER = "db.driver";
    private static final String DB_URL = "db.url";
    private static final String DB_USER = "db.user";
    private static final String DB_PASS = "db.pass";

    /**
     * �v���C�x�[�g�R���X�g���N�^�i�V���O���g���ɂ��邽�߁j
     */
    private DaoUtil() {
        ds = createDataSource();
    }

    public static DataSource getSource() {
        return self.ds;
    }

    private DataSource createDataSource() {

        // commons-dbcp �� BasicDataSource
        BasicDataSource bds = new BasicDataSource();

        bds.setDriverClassName(PropertiesUtil.getProperty(DB_DRIVER));
        bds.setUrl(PropertiesUtil.getProperty(DB_URL));
        bds.setUsername(PropertiesUtil.getProperty(DB_USER));
        bds.setPassword(PropertiesUtil.getProperty(DB_PASS));

        return bds;
    }
}
