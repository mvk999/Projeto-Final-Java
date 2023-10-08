package modelo;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class DAOOcorrencia {
    
    String mensagem = "";
    DAOAluno objDAOAluno = new DAOAluno();
    DAOTurma objDAOTurma = new DAOTurma();
    ConverteData objConverte = new ConverteData();
    
    public String inserir(Ocorrencia objOcorrencia){
        String sql = "insert into ocorrencia (descOcorrencia,dataOcorrencia,aluno,turma) values(?,?,?,?)";
        try{
            PreparedStatement pst = Conexao.getPreparedStatement(sql);
            pst.setString(1, objOcorrencia.getDescOcorrencia());
            pst.setDate(2, objConverte.converteBanco(objOcorrencia.getDataOcorrencia()));
            pst.setInt(3, objOcorrencia.getObjAluno().getCodAluno());
            pst.setInt(4, objOcorrencia.getObjTurma().getCodTurma());
            if(pst.executeUpdate()>0){
                mensagem = "Ocorrencia cadastrada!";
            }else{
                mensagem= "Ocorrencia não cadastrada!";
            }
            pst.close(); // fecha a conexão com o banco de dados
        }catch(SQLException ex){
           mensagem = "Erro de SQL no inserir do DAOOcorrencia"+ex.getMessage()+"\n Comando sql="+sql;
        }
        return mensagem;
    }
    
    public String alterar(Ocorrencia objOcorrencia){
        String sql = "update ocorrencia set descOcorrencia=?,dataOcorrencia=?,aluno=?,turma=? where codOcorrencia=?";
        try{
            PreparedStatement pst = Conexao.getPreparedStatement(sql);
            pst.setString(1, objOcorrencia.getDescOcorrencia());
            pst.setDate(2, objConverte.converteBanco(objOcorrencia.getDataOcorrencia()));
            pst.setInt(3, objOcorrencia.getObjAluno().getCodAluno());
            pst.setInt(4, objOcorrencia.getObjTurma().getCodTurma());
            pst.setInt(5, objOcorrencia.getCodOcorrencia());
            if(pst.executeUpdate()>0){
                mensagem = "Ocorrencia alterada!";
            }else{
                mensagem= "Ocorrencia não alterada!";
            }
            pst.close(); // fecha a conexão com o banco de dados
        }catch(SQLException ex){
           mensagem = "Erro de SQL no alterar do DAOOcorrencia"+ex.getMessage()+"\n Comando sql="+sql;
        }
        return mensagem;
    }
    
    public String excluir(Ocorrencia objOcorrencia){
        String sql = "delete from ocorrencia where codOcorrencia=?";
        try{
            PreparedStatement pst = Conexao.getPreparedStatement(sql);
            pst.setInt(1, objOcorrencia.getCodOcorrencia());
            if(pst.executeUpdate()>0){
                mensagem = "Ocorrencia excluida!";
            }else{
                mensagem= "Ocorrencia não excluida!";
            }
            pst.close(); // fecha a conexão com o banco de dados
        }catch(SQLException ex){
           mensagem = "Erro de SQL no excluir do DAOOcorrencia"+ex.getMessage()+"\n Comando sql="+sql;
        }
        return mensagem;
    }
    
    public List<Ocorrencia> listarOcorrencia(){
        String sql = "select * from ocorrencia";
        List<Ocorrencia> listaOcorrencia = new ArrayList<>();
        try{
            PreparedStatement pst = Conexao.getPreparedStatement(sql);
            ResultSet rs = pst.executeQuery();
            while(rs.next()){
                Ocorrencia objOcorrencia = new Ocorrencia();
                objOcorrencia.setCodOcorrencia(rs.getInt("codOcorrencia"));
                objOcorrencia.setDescOcorrencia(rs.getString("descOcorrencia"));
                objOcorrencia.setDataOcorrencia(objConverte.converteCalendario(rs.getDate("dataOcorrencia")));
                objOcorrencia.setObjAluno(objDAOAluno.localizar(rs.getInt("aluno")));
                objOcorrencia.setObjTurma(objDAOTurma.localizar(rs.getInt("turma")));
                listaOcorrencia.add(objOcorrencia);
            }
        }catch(SQLException ex){
            System.out.println("Erro no listarOcorrencia do DAOOcorrencia");
            
        }
        return listaOcorrencia;
    }
}