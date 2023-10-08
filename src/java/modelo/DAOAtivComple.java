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
public class DAOAtivComple {

    String mensagem="";
    
    public String inserir(AtivComple objAtivComple){
        String sql = "insert into atividadecomplementar(nomeAtivComple,descAtivComple) values(?,?)";
        try{
            PreparedStatement pst = Conexao.getPreparedStatement(sql);
            pst.setString(1, objAtivComple.getNomeAtivComple());
            pst.setString(2, objAtivComple.getDescAtivComple());
            if(pst.executeUpdate()>0){
                mensagem = "Atividade Complementar cadastrada com sucesso";
            }else{
                mensagem = "Atividade Complementar não cadastrada";
            }
            pst.close(); //fecha a conexao
        }catch(SQLException ex){
            mensagem = "Erro de SQL no incluir do DAOAtivComple"+ex.getMessage()+"\nComando SQL="+sql;
        }
        return mensagem;
    }
      public String alterar(AtivComple objAtivComple){
        String sql = "update atividadecomplementar set nomeAtivComple=?, descAtivComple=? where codAtivComple=?";
        try{
            PreparedStatement pst = Conexao.getPreparedStatement(sql);
            pst.setString(1, objAtivComple.getNomeAtivComple());
            pst.setString(2, objAtivComple.getDescAtivComple());
            pst.setInt(3, objAtivComple.getCodAtivComple());
            if(pst.executeUpdate()>0){
                mensagem = "Atividade Complementar alterada com sucesso";
            }else{
                mensagem = "Atividade Complementar não alterada";
            }
            pst.close(); //fecha a conexao
        }catch(SQLException ex){
            mensagem = "Erro de SQL no alterar do DAOAtivComple"+ex.getMessage()+"\nComando SQL="+sql;
        }
        return mensagem;
    }
      public String excluir(AtivComple objAtivComple){
        String sql = "delete from atividadecomplementar where codAtivComple=?";
        try{
            PreparedStatement pst = Conexao.getPreparedStatement(sql);
            pst.setInt(1, objAtivComple.getCodAtivComple());
            if(pst.executeUpdate()>0){
                mensagem = "Atividade Complementar excluida com sucesso";
            }else{
                mensagem = "Atividade Complementar não excluida";
            }
            pst.close(); //fecha a conexao
        }catch(SQLException ex){
            mensagem = "Erro de SQL no excluir do DAOAtivComple"+ex.getMessage()+"\nComando SQL="+sql;
        }
        return mensagem;
    }
    
    public List<AtivComple> listarAtivComple(){
        String sql = "select * from atividadecomplementar";
        List<AtivComple> listaAtivComple = new ArrayList<>();
        try{
            PreparedStatement pst = Conexao.getPreparedStatement(sql);
            ResultSet rs = pst.executeQuery();
            while(rs.next()){
                AtivComple objAtivComple = new AtivComple();
                objAtivComple.setCodAtivComple(rs.getInt("codAtivComple"));
                objAtivComple.setNomeAtivComple(rs.getString("nomeAtivComple"));
                objAtivComple.setDescAtivComple(rs.getString("descAtivComple"));
                listaAtivComple.add(objAtivComple);
        }
        }   catch(SQLException ex){
            System.out.println("Erro no listarAtivComple do DAOAtivComple"+ex.getMessage()+"\nComando SQL:"+sql);
    }
        return listaAtivComple;
    }
    
    public AtivComple localizar(Integer id){
                String sql = "select * from atividadecomplementar where codAtivComple=?";
                AtivComple objAtivComple = new AtivComple();
                try{
            PreparedStatement pst = Conexao.getPreparedStatement(sql);
            pst.setInt(1, id);
            ResultSet rs = pst.executeQuery();
            while(rs.next()){
                objAtivComple.setCodAtivComple(rs.getInt("codAtivComple"));
                objAtivComple.setNomeAtivComple(rs.getString("nomeAtivComple"));
                objAtivComple.setDescAtivComple(rs.getString("descAtivComple"));
                return objAtivComple;
        }
        }   catch(SQLException ex){
            System.out.println("Erro de SQL no localizar"+ex.getMessage()+"\nComando SQL:"+sql);
    }
        return null;

        
    }
    
    }