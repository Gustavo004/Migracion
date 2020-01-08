package Entidad;

public class Biblioteca {
    private String _Id_bi;
    private String _Id_des;
    private String _Costo_bi;
    private String _Horario_bi;

    public Biblioteca() {
    }

    public Biblioteca(String _Id_bi, String _Id_des, String _Costo_bi, String _Horario_bi) {
        this._Id_bi = _Id_bi;
        this._Id_des = _Id_des;
        this._Costo_bi = _Costo_bi;
        this._Horario_bi = _Horario_bi;
    }

    public String getId_bi() {
        return _Id_bi;
    }

    public void setId_bi(String _Id_bi) {
        this._Id_bi = _Id_bi;
    }

    public String getId_des() {
        return _Id_des;
    }

    public void setId_des(String _Id_des) {
        this._Id_des = _Id_des;
    }

    public String getCosto_bi() {
        return _Costo_bi;
    }

    public void setCosto_bi(String _Costo_bi) {
        this._Costo_bi = _Costo_bi;
    }

    public String getHorario_bi() {
        return _Horario_bi;
    }

    public void setHorario_bi(String _Horario_bi) {
        this._Horario_bi = _Horario_bi;
    }
    
    
}
