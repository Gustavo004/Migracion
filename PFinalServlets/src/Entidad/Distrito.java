package Entidad;

public class Distrito {
    private String _Cod_dist;
    private String _Nomb_dist;
    private String _Abrev_dist;

    public Distrito() {
    }

    public Distrito(String _Cod_dist, String _Nomb_dist, String _Abrev_dist) {
        this._Cod_dist = _Cod_dist;
        this._Nomb_dist = _Nomb_dist;
        this._Abrev_dist = _Abrev_dist;
    }

    public String getCod_dist() {
        return _Cod_dist;
    }

    public void setCod_dist(String _Cod_dist) {
        this._Cod_dist = _Cod_dist;
    }

    public String getNomb_dist() {
        return _Nomb_dist;
    }

    public void setNomb_dist(String _Nomb_dist) {
        this._Nomb_dist = _Nomb_dist;
    }

    public String getAbrev_dist() {
        return _Abrev_dist;
    }

    public void setAbrev_dist(String _Abrev_dist) {
        this._Abrev_dist = _Abrev_dist;
    }
    
    
}
