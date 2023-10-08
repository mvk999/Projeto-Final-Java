/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author 16110968633
 */
public class DAOTurno {
    String mensagem = "";
    ConverteData objConverteData = new ConverteData();
    //    DAOSetor objDAOSetor = new DAOSetor();
    
    public String inserir(Turno objTurno){
        String sql = "insert into turno (nomeTurno,horarioEntrada,horarioSaida) values(?,?,?)";
        try{
            PreparedStatement pst = Conexao.getPreparedStatement(sql);
            //pst.setInt(1, objSetor.getCodSetor());
            pst.setString(1, objTurno.getNomeTurno());
            pst.setString(2, objTurno.getHorarioEntrada());
            pst.setString(3, objTurno.getHorarioSaida());
            if(pst.executeUpdate()>0){
                    mensagem = "Turno cadastrado!";
            }else{
                mensagem= "Turno não cadastrado!";
            }
            pst.close(); // fecha a conexão com o banco de dados
        }catch(SQLException ex){
           mensagem = "Erro de SQL no inserir do DAOTurno"+ex.getMessage()+"\n Comando sql="+sql;
        }
        return mensagem;
    }
    
    public String alterar(Turno objTurno){
        String sql = "update turno set nomeTurno=?,horarioEntrada=?,horarioSaida=? where codTurno=?";
        try{
            PreparedStatement pst = Conexao.getPreparedStatement(sql);
            pst.setString(1, objTurno.getNomeTurno());
            pst.setString(2, objTurno.getHorarioEntrada());
            pst.setString(3, objTurno.getHorarioSaida());
            pst.setInt(4, objTurno.getCodTurno());
            if(pst.executeUpdate()>0){
                mensagem = "Turno alterado!";
            }else{
                mensagem= "Turno não alterado!";
            }
            pst.close(); // fecha a conexão com o banco de dados
        }catch(SQLException ex){
           mensagem = "Erro de SQL no alterar do DAOTurno"+ex.getMessage()+"\n Comando sql="+sql;
        }
        return mensagem;
    }
    
    public String excluir(Turno objTurno){
        String sql = "delete from turno where codTurno=?";
        try{
            PreparedStatement pst = Conexao.getPreparedStatement(sql);
            pst.setInt(1, objTurno.getCodTurno());
            if(pst.executeUpdate()>0){
                mensagem = "Turno excluido!";
            }else{
                mensagem= "Turno não excluido!";
            }
            pst.close(); // fecha a conexão com o banco de dados
        }catch(SQLException ex){
           mensagem = "Erro de SQL no excluir do DAOTurno"+ex.getMessage()+"\n Comando sql="+sql;
        }
        return mensagem;
    }
    
    public List<Turno> listarTurno(){
        String sql = "select * from turno";
        List<Turno> listaTurno = new ArrayList<>();
        try{
            PreparedStatement pst = Conexao.getPreparedStatement(sql);
            ResultSet rs = pst.executeQuery();
            while(rs.next()){
                Turno objTurno = new Turno();
                objTurno.setCodTurno(rs.getInt("codTurno"));
                objTurno.setNomeTurno(rs.getString("nomeTurno"));
                objTurno.setHorarioEntrada(rs.getString("horarioEntrada"));
                objTurno.setHorarioSaida(rs.getString("horarioSaida"));
                listaTurno.add(objTurno);
            }
        }catch(SQLException ex){
            System.out.println("Erro no listarTurno do DAOTurno");
            
        }
        return listaTurno;
    }
    
    public Turno localizar(Integer id){
                String sql = "select * from turno where codTurno=?";
                Turno objTurno = new Turno();
                try{
            PreparedStatement pst = Conexao.getPreparedStatement(sql);
            pst.setInt(1, id);
            ResultSet rs = pst.executeQuery();
            while(rs.next()){
                objTurno.setCodTurno(rs.getInt("codTurno"));
                objTurno.setNomeTurno(rs.getString("nomeTurno"));
                objTurno.setHorarioEntrada(rs.getString("horarioEntrada"));
                objTurno.setHorarioSaida(rs.getString("horarioSaida"));
                return objTurno;
        }
        }   catch(SQLException ex){
            System.out.println("Erro de SQL no localizar"+ex.getMessage()+"\nComando SQL:"+sql);
    }
        return null;

        
    }
}
