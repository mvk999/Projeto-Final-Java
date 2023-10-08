package modelo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author 14582851622
 */
public class DAODisciplina {

    String mensagem="";
    
    public String inserir(Disciplina objDisciplina){
        String sql = "insert into disciplina(nomeDisciplina,areaDisciplina) values(?,?)";
        try{
            PreparedStatement pst = Conexao.getPreparedStatement(sql);
            pst.setString(1, objDisciplina.getNomeDisciplina());
            pst.setString(2, objDisciplina.getAreaDisciplina());
            if(pst.executeUpdate()>0){
                mensagem = "Disciplina cadastrada com sucesso";
            }else{
                mensagem = "Disciplina não cadastrada";
            }
            pst.close(); //fecha a conexao
        }catch(SQLException ex){
            mensagem = "Erro de SQL no incluir do DAODisciplina"+ex.getMessage()+"\nComando SQL="+sql;
        }
        return mensagem;
    }
      public String alterar(Disciplina objDisciplina){
        String sql = "update disciplina set nomeDisciplina=?, areaDisciplina=? where codDisciplina=?";
        try{
            PreparedStatement pst = Conexao.getPreparedStatement(sql);
            pst.setString(1, objDisciplina.getNomeDisciplina());
            pst.setString(2, objDisciplina.getAreaDisciplina());
            pst.setInt(3, objDisciplina.getCodDisciplina());
            if(pst.executeUpdate()>0){
                mensagem = "Disciplina alterada com sucesso";
            }else{
                mensagem = "Disciplina não alterada";
            }
            pst.close(); //fecha a conexao
        }catch(SQLException ex){
            mensagem = "Erro de SQL no alterar do DAODisciplina"+ex.getMessage()+"\nComando SQL="+sql;
        }
        return mensagem;
    }
      public String excluir(Disciplina objDisciplina){
        String sql = "delete from disciplina where codDisciplina=?";
        try{
            PreparedStatement pst = Conexao.getPreparedStatement(sql);
            pst.setInt(1, objDisciplina.getCodDisciplina());
            if(pst.executeUpdate()>0){
                mensagem = "Disciplina excluida com sucesso";
            }else{
                mensagem = "Disciplina não excluida";
            }
            pst.close(); //fecha a conexao
        }catch(SQLException ex){
            mensagem = "Erro de SQL no excluir do DAODisciplina"+ex.getMessage()+"\nComando SQL="+sql;
        }
        return mensagem;
    }
    
    public List<Disciplina> listarDisciplina(){
        String sql = "select * from disciplina";
        List<Disciplina> listaDisciplina = new ArrayList<>();
        try{
            PreparedStatement pst = Conexao.getPreparedStatement(sql);
            ResultSet rs = pst.executeQuery();
            while(rs.next()){
                Disciplina objDisciplina = new Disciplina();
                objDisciplina.setCodDisciplina(rs.getInt("codDisciplina"));
                objDisciplina.setNomeDisciplina(rs.getString("nomeDisciplina"));
                objDisciplina.setAreaDisciplina(rs.getString("areaDisciplina"));
                listaDisciplina.add(objDisciplina);
        }
        }   catch(SQLException ex){
            System.out.println("Erro no listarDisciplina do DAODisciplina"+ex.getMessage()+"\nComando SQL:"+sql);
    }
        return listaDisciplina;
    }
    
    public Disciplina localizar(Integer id){
                String sql = "select * from disciplina where codDisciplina=?";
                Disciplina objDisciplina = new Disciplina();
                try{
            PreparedStatement pst = Conexao.getPreparedStatement(sql);
            pst.setInt(1, id);
            ResultSet rs = pst.executeQuery();
            while(rs.next()){
                objDisciplina.setCodDisciplina(rs.getInt("codDisciplina"));
                objDisciplina.setNomeDisciplina(rs.getString("nomeDisciplina"));
                objDisciplina.setAreaDisciplina(rs.getString("areaDisciplina"));
                return objDisciplina;
        }
        }   catch(SQLException ex){
            System.out.println("Erro de SQL no localizar"+ex.getMessage()+"\nComando SQL:"+sql);
    }
        return null;

        
    }
    
    }