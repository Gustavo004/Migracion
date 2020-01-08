package Entidad;

public class Usuario {
    private String _Id_us;
    private String _Nomb_us;
    private String _Ape_pater_us;
    private String _Ape_mater_us;
    private String _Email_us;
    private String _Pass_us;

    public Usuario() {
    }

    public Usuario(String _Id_us, String _Nomb_us, String _Ape_pater_us, String _Ape_mater_us, String _Email_us, String _Pass_us) {
        this._Id_us = _Id_us;
        this._Nomb_us = _Nomb_us;
        this._Ape_pater_us = _Ape_pater_us;
        this._Ape_mater_us = _Ape_mater_us;
        this._Email_us = _Email_us;
        this._Pass_us = _Pass_us;
    }

    public String getId_us() {
        return _Id_us;
    }

    public void setId_us(String _Id_us) {
        this._Id_us = _Id_us;
    }

    public String getNomb_us() {
        return _Nomb_us;
    }

    public void setNomb_us(String _Nomb_us) {
        this._Nomb_us = _Nomb_us;
    }

    public String getApe_pater_us() {
        return _Ape_pater_us;
    }

    public void setApe_pater_us(String _Ape_pater_us) {
        this._Ape_pater_us = _Ape_pater_us;
    }

    public String getApe_mater_us() {
        return _Ape_mater_us;
    }

    public void setApe_mater_us(String _Ape_mater_us) {
        this._Ape_mater_us = _Ape_mater_us;
    }

    public String getEmail_us() {
        return _Email_us;
    }

    public void setEmail_us(String _Email_us) {
        this._Email_us = _Email_us;
    }

    public String getPass_us() {
        return _Pass_us;
    }

    public void setPass_us(String _Pass_us) {
        this._Pass_us = _Pass_us;
    }
    
}
