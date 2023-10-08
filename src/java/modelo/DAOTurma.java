package modelo;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class DAOTurma {
    
    String mensagem = "";
    DAOTurno objDAOTurno = new DAOTurno();
    DAOSetor objDAOSetor = new DAOSetor();
    
    public String inserir(Turma objTurma){
        String sql = "insert into turma (mestredeSala,numeroSala,quantAlunos,quantMaxAlunos,turno,setor) values(?,?,?,?,?,?)";
        try{
            PreparedStatement pst = Conexao.getPreparedStatement(sql);
            pst.setString(1, objTurma.getMestredeSala());
            pst.setInt(2, objTurma.getNumeroSala());
            pst.setInt(3, objTurma.getQuantAlunos());
            pst.setInt(4, objTurma.getQuantMaxAlunos());
            pst.setInt(5, objTurma.getObjTurno().getCodTurno());
            pst.setInt(6, objTurma.getObjSetor().getCodSetor());
            if(pst.executeUpdate()>0){
                mensagem = "Turma cadastrada!";
            }else{
                mensagem= "Turma não cadastrada!";
            }
            pst.close(); // fecha a conexão com o banco de dados
        }catch(SQLException ex){
           mensagem = "Erro de SQL no inserir do DAOTurma"+ex.getMessage()+"\n Comando sql="+sql;
        }
        return mensagem;
    }
    
    public String alterar(Turma objTurma){
        String sql = "update turma set mestredeSala=?,numeroSala=?,quantAlunos=?,quantMaxAlunos=?,turno=?,setor=? where codTurma=?";
        try{
            PreparedStatement pst = Conexao.getPreparedStatement(sql);
            pst.setString(1, objTurma.getMestredeSala());
            pst.setInt(2, objTurma.getNumeroSala());
            pst.setInt(3, objTurma.getQuantAlunos());
            pst.setInt(4, objTurma.getQuantMaxAlunos());
            pst.setInt(5, objTurma.getObjTurno().getCodTurno());
            pst.setInt(6, objTurma.getObjSetor().getCodSetor());
            pst.setInt(7, objTurma.getCodTurma());
            if(pst.executeUpdate()>0){
                mensagem = "Turma alterada!";
            }else{
                mensagem= "Turma não alterada!";
            }
            pst.close(); // fecha a conexão com o banco de dados
        }catch(SQLException ex){
           mensagem = "Erro de SQL no alterar do DAOTurma"+ex.getMessage()+"\n Comando sql="+sql;
        }
        return mensagem;
    }
    
    public String excluir(Turma objTurma){
        String sql = "delete from turma where codTurma=?";
        try{
            PreparedStatement pst = Conexao.getPreparedStatement(sql);
            pst.setInt(1, objTurma.getCodTurma());
            if(pst.executeUpdate()>0){
                mensagem = "Turma excluida!";
            }else{
                mensagem= "Turma não excluida!";
            }
            pst.close(); // fecha a conexão com o banco de dados
        }catch(SQLException ex){
           mensagem = "Erro de SQL no excluir do DAOTurma"+ex.getMessage()+"\n Comando sql="+sql;
        }
        return mensagem;
    }
    
    public List<Turma> listarTurma(){
        String sql = "select * from turma";
        List<Turma> listaTurma = new ArrayList<>();
        try{
            PreparedStatement pst = Conexao.getPreparedStatement(sql);
            ResultSet rs = pst.executeQuery();
            while(rs.next()){
                Turma objTurma = new Turma();
                objTurma.setCodTurma(rs.getInt("codTurma"));
                objTurma.setMestredeSala(rs.getString("mestredeSala"));
                objTurma.setNumeroSala(rs.getInt("numeroSala"));
                objTurma.setQuantAlunos(rs.getInt("quantAlunos"));
                objTurma.setQuantMaxAlunos(rs.getInt("quantMaxAlunos"));
                objTurma.setObjTurno(objDAOTurno.localizar(rs.getInt("turno")));
                objTurma.setObjSetor(objDAOSetor.localizar(rs.getInt("setor")));
                listaTurma.add(objTurma);
            }
        }catch(SQLException ex){
            System.out.println("Erro no listarTurma do DAOTurma");
            
        }
        return listaTurma;
    }
    
     public Turma localizar(Integer id){
                String sql = "select * from turma where codTurma=?";
                Turma objTurma = new Turma();
                try{
            PreparedStatement pst = Conexao.getPreparedStatement(sql);
            pst.setInt(1, id);
            ResultSet rs = pst.executeQuery();
            while(rs.next()){
                objTurma.setCodTurma(rs.getInt("codTurma"));
                objTurma.setMestredeSala(rs.getString("mestredeSala"));
                objTurma.setNumeroSala(rs.getInt("numeroSala"));
                objTurma.setQuantAlunos(rs.getInt("quantAlunos"));
                objTurma.setQuantMaxAlunos(rs.getInt("quantMaxAlunos"));
                objTurma.setObjTurno(objDAOTurno.localizar(rs.getInt("turno")));
                objTurma.setObjSetor(objDAOSetor.localizar(rs.getInt("setor")));
                return objTurma;
        }
        }   catch(SQLException ex){
            System.out.println("Erro de SQL no localizar"+ex.getMessage()+"\nComando SQL:"+sql);
    }
        return null;

        
    }
}
