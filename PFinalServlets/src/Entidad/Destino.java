package Entidad;

public class Destino {
    private String _Id_des;
    private String _Cod_dist;
    private String _Nomb_des;
    private String _Dir_des;
    private String _Descrip_des;
    private String _ImgRuta_des;

    public Destino() {
    }

    public Destino(String _Id_des, String _Cod_dist, String _Nomb_des, String _Dir_des, String _Descrip_des, String _ImgRuta_des) {
        this._Id_des = _Id_des;
        this._Cod_dist = _Cod_dist;
        this._Nomb_des = _Nomb_des;
        this._Dir_des = _Dir_des;
        this._Descrip_des = _Descrip_des;
        this._ImgRuta_des = _ImgRuta_des;
    }

    public String getId_des() {
        return _Id_des;
    }

    public void setId_des(String _Id_des) {
        this._Id_des = _Id_des;
    }

    public String getCod_dist() {
        return _Cod_dist;
    }

    public void setCod_dist(String _Cod_dist) {
        this._Cod_dist = _Cod_dist;
    }

    public String getNomb_des() {
        return _Nomb_des;
    }

    public void setNomb_des(String _Nomb_des) {
        this._Nomb_des = _Nomb_des;
    }

    public String getDir_des() {
        return _Dir_des;
    }

    public void setDir_des(String _Dir_des) {
        this._Dir_des = _Dir_des;
    }

    public String getDescrip_des() {
        return _Descrip_des;
    }

    public void setDescrip_des(String _Descrip_des) {
        this._Descrip_des = _Descrip_des;
    }

    public String getImgRuta_des() {
        return _ImgRuta_des;
    }

    public void setImgRuta_des(String _ImgRuta_des) {
        this._ImgRuta_des = _ImgRuta_des;
    }
    
}
