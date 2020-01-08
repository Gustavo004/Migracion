package Entidad;

public class Museo {
    private String _Id_mus;
    private String _Id_des;
    private String _Costo_mus;
    private String _Horario_mus;

    public Museo() {
    }

    public Museo(String _Id_mus, String _Id_des, String _Costo_mus, String _Horario_mus) {
        this._Id_mus = _Id_mus;
        this._Id_des = _Id_des;
        this._Costo_mus = _Costo_mus;
        this._Horario_mus = _Horario_mus;
    }

    public String getId_mus() {
        return _Id_mus;
    }

    public void setId_mus(String _Id_mus) {
        this._Id_mus = _Id_mus;
    }

    public String getId_des() {
        return _Id_des;
    }

    public void setId_des(String _Id_des) {
        this._Id_des = _Id_des;
    }

    public String getCosto_mus() {
        return _Costo_mus;
    }

    public void setCosto_mus(String _Costo_mus) {
        this._Costo_mus = _Costo_mus;
    }

    public String getHorario_mus() {
        return _Horario_mus;
    }

    public void setHorario_mus(String _Horario_mus) {
        this._Horario_mus = _Horario_mus;
    }
    
    
}
