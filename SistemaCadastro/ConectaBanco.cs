using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using MySql.Data;
using MySql.Data.MySqlClient;

namespace SistemaCadastro
{
    internal class ConectaBanco
    {
        MySqlConnection conexao = new MySqlConnection("server=localhost;user id=root;password=;database=banco_cadastro");
        public string mensagem;

        public bool insereBanda(Banda novaBanda)
        {
            try
            {
                conexao.Open();
                return true;
            }catch(MySqlException erro)
            {
                mensagem = erro.Message;
                return false;
            }
        }
    }
}
