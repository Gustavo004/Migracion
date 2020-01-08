package Entidad;

public class Teatro {
    private String _Id_tet;
    private String _Id_des;

    public Teatro() {
    }

    public Teatro(String _Id_tet, String _Id_des) {
        this._Id_tet = _Id_tet;
        this._Id_des = _Id_des;
    }

    public String getId_tet() {
        return _Id_tet;
    }

    public void setId_tet(String _Id_tet) {
        this._Id_tet = _Id_tet;
    }

    public String getId_des() {
        return _Id_des;
    }

    public void setId_des(String _Id_des) {
        this._Id_des = _Id_des;
    }    
    
}
