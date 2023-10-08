/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.util.Calendar;


public class Prof {
    private Integer codProf, anoIngressaoProf;
    private String nomeProf, cpfProf, emailProf, telefoneProf, naturalidadeProf;
    private Calendar nascimentoProf;

    public Integer getCodProf() {
        return codProf;
    }

    public void setCodProf(Integer codProf) {
        this.codProf = codProf;
    }

    public Integer getAnoIngressaoProf() {
        return anoIngressaoProf;
    }

    public void setAnoIngressaoProf(Integer anoIngressaoProf) {
        this.anoIngressaoProf = anoIngressaoProf;
    }

    public String getNomeProf() {
        return nomeProf;
    }

    public void setNomeProf(String nomeProf) {
        this.nomeProf = nomeProf;
    }

    public String getCpfProf() {
        return cpfProf;
    }

    public void setCpfProf(String cpfProf) {
        this.cpfProf = cpfProf;
    }

    public String getEmailProf() {
        return emailProf;
    }

    public void setEmailProf(String emailProf) {
        this.emailProf = emailProf;
    }

    public String getTelefoneProf() {
        return telefoneProf;
    }

    public void setTelefoneProf(String telefoneProf) {
        this.telefoneProf = telefoneProf;
    }

    public String getNaturalidadeProf() {
        return naturalidadeProf;
    }

    public void setNaturalidadeProf(String naturalidadeProf) {
        this.naturalidadeProf = naturalidadeProf;
    }

    public Calendar getNascimentoProf() {
        return nascimentoProf;
    }

    public void setNascimentoProf(Calendar nascimentoProf) {
        this.nascimentoProf = nascimentoProf;
    }
    
    
}
