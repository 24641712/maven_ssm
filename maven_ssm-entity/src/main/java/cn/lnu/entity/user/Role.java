package cn.lnu.entity.user;

import java.io.Serializable;

/**
 * Created by CCL on 2018/11/28 0028 下午 6:31
 *
 * @description:
 */
//实现Serializable接口，表明它能够序列化
public class Role implements Serializable {
    //序列化的版本编号
    private static final long serialVersionUID = -5441450700658826765L;
    private long id;
    private String rolename;
    private String note;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getRolename() {
        return rolename;
    }

    public void setRolename(String rolename) {
        this.rolename = rolename;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    @Override
    public String toString() {
        return "Role{" +
                "id=" + id +
                ", rolename='" + rolename + '\'' +
                ", note='" + note + '\'' +
                '}';
    }
}
