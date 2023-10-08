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
public class DAOProf {

ConverteData objConverte = new ConverteData();
    
    String mensagem = "";
    public String inserir(Prof objProf){
        String sql = "insert into professor(nomeProf, cpfProf, emailProf, telefoneProf, nascimentoProf, anoIngressaoProf, naturalidadeProf) values(?,?,?,?,?,?,?)";
        try{
            PreparedStatement pst = Conexao.getPreparedStatement(sql);
            pst.setString(1, objProf.getNomeProf());
            pst.setString(2, objProf.getCpfProf());
            pst.setString(3, objProf.getEmailProf());
            pst.setString(4, objProf.getTelefoneProf());
            pst.setDate(5, objConverte.converteBanco(objProf.getNascimentoProf()));
            pst.setInt(6, objProf.getAnoIngressaoProf());
            pst.setString(7, objProf.getNaturalidadeProf());
            if(pst.executeUpdate()>0){
                mensagem = "Professor cadastrado com sucesso";
            }else{
                mensagem = "Professor não cadastrado";
            }
            pst.close(); //fecha a conexao
        }catch(SQLException ex){
            mensagem = "Erro de SQL no incluir do DAOProf"+ex.getMessage()+"\nComando SQL="+sql;
        }
        return mensagem;
    }
      public String alterar(Prof objProf){
        String sql = "update professor set nomeProf=?, cpfProf=?, emailProf=?, telefoneProf=?, nascimentoProf=?, anoIngressaoProf=?, naturalidadeProf=? where codProf=?";
        try{
            PreparedStatement pst = Conexao.getPreparedStatement(sql);
            pst.setString(1, objProf.getNomeProf());
            pst.setString(2, objProf.getCpfProf());
            pst.setString(3, objProf.getEmailProf());
            pst.setString(4, objProf.getTelefoneProf());
            pst.setDate(5, objConverte.converteBanco(objProf.getNascimentoProf()));
            pst.setInt(6, objProf.getAnoIngressaoProf());
            pst.setString(7, objProf.getNaturalidadeProf());
            pst.setInt(8, objProf.getCodProf());
            if(pst.executeUpdate()>0){
                mensagem = "Professor alterado com sucesso";
            }else{
                mensagem = "Professor não alterado";
            }
            pst.close(); //fecha a conexao
        }catch(SQLException ex){
            mensagem = "Erro de SQL no alterar do DAOProf"+ex.getMessage()+"\nComando SQL="+sql;
        }
        return mensagem;
    }
      public String excluir(Prof objProf){
        String sql = "delete from professor where codProf=?";
        try{
            PreparedStatement pst = Conexao.getPreparedStatement(sql);
            pst.setInt(1, objProf.getCodProf());
            if(pst.executeUpdate()>0){
                mensagem = "Professor excluido com sucesso";
            }else{
                mensagem = "Professor não excluido";
            }
            pst.close(); //fecha a conexao
        }catch(SQLException ex){
            mensagem = "Erro de SQL no excluir do DAOProf"+ex.getMessage()+"\nComando SQL="+sql;
        }
        return mensagem;
    }
    public List<Prof> listarProf(){
        String sql = "select * from professor";
        List<Prof> listaProf = new ArrayList<>();
        try{
            PreparedStatement pst = Conexao.getPreparedStatement(sql);
            ResultSet rs = pst.executeQuery();
            while(rs.next()){
                Prof objProf = new Prof();
                objProf.setCodProf(rs.getInt("codProf"));
                objProf.setNomeProf(rs.getString("nomeProf"));
                objProf.setCpfProf(rs.getString("cpfProf"));
                objProf.setEmailProf(rs.getString("emailProf"));
                objProf.setTelefoneProf(rs.getString("telefoneProf"));
                objProf.setNascimentoProf(objConverte.converteCalendario(rs.getDate("nascimentoProf")));
                objProf.setAnoIngressaoProf(rs.getInt("anoIngressaoProf"));
                objProf.setNaturalidadeProf(rs.getString("naturalidadeProf"));

                listaProf.add(objProf);
        }
        }   catch(SQLException ex){
            System.out.println("Erro no listarProf do DAOProf"+ex.getMessage()+"\nComando SQL:"+sql);
    }
        return listaProf;
    }
    
        public Prof localizar(Integer id){
                String sql = "select * from professor where codProf=?";
                Prof objProf = new Prof();
                try{
            PreparedStatement pst = Conexao.getPreparedStatement(sql);
            pst.setInt(1, id);
            ResultSet rs = pst.executeQuery();
            while(rs.next()){
                objProf.setCodProf(rs.getInt("codProf"));
                objProf.setNomeProf(rs.getString("nomeProf"));
                objProf.setCpfProf(rs.getString("cpfProf"));
                objProf.setEmailProf(rs.getString("emailProf"));
                objProf.setTelefoneProf(rs.getString("telefoneProf"));
                objProf.setNascimentoProf(objConverte.converteCalendario(rs.getDate("nascimentoProf")));
                objProf.setAnoIngressaoProf(rs.getInt("anoIngressaoProf"));
                objProf.setNaturalidadeProf(rs.getString("naturalidadeProf"));
                return objProf;
        }
        }   catch(SQLException ex){
            System.out.println("Erro de SQL no localizar"+ex.getMessage()+"\nComando SQL:"+sql);
    }
        return null;

        
    }
    }