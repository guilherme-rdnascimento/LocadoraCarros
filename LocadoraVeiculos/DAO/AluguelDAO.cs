using System;
using System.Data;
using System.Data.Common;
using System.Collections.Generic;
using Model;
using System.Data.SqlClient;

namespace DAO
{
    public class AluguelDAO
    {
        public DbDataReader Consultar(AluguelEntidade pAluguelEntidade)
        {
            List<SqlParameter> vListOfSqlParameter = new List<SqlParameter>();

            if (pAluguelEntidade.iId > 0)
            {
                vListOfSqlParameter.Add(Conexao.CriarParametro("@piId", DbType.Int32, pAluguelEntidade.iId));
            }

            return Conexao.ExecuteReader("SPSel_TbAluguel", vListOfSqlParameter);
        }

        public DbDataReader Consultar(bool pEmAndamento)
        {
            List<SqlParameter> vListOfSqlParameter = new List<SqlParameter>();

            vListOfSqlParameter.Add(Conexao.CriarParametro("@pEmAndamento", DbType.Int32, pEmAndamento));

            return Conexao.ExecuteReader("SPSel_TbAluguel", vListOfSqlParameter);
        }

        public DataSet RelatorioVeiculosAlugados()
        {
            return Conexao.Fill("SPRel_VeiculosAlugados", new List<SqlParameter>());
        }

        public void Excluir(AluguelEntidade pAluguelEntidade)
        {
            List<SqlParameter> vListOfSqlParameter = new List<SqlParameter>();

            vListOfSqlParameter.Add(Conexao.CriarParametro("@piId", DbType.Int32, pAluguelEntidade.iId));

            Conexao.ExecuteNonQuery("SPDel_TbAluguel", vListOfSqlParameter);
        }

        public void Alterar(AluguelEntidade pAluguelEntidade)
        {
            Conexao.ExecuteNonQuery("SPUpd_TbAluguel", this.fnGetAllSqlParameters(pAluguelEntidade));
        }

        public void DevolverVeiculo(AluguelEntidade pAluguelEntidade)
        {
            List<SqlParameter> vListOfSqlParameter = new List<SqlParameter>();

            vListOfSqlParameter.Add(Conexao.CriarParametro("@piId", DbType.Int32, pAluguelEntidade.iId));

            Conexao.ExecuteNonQuery("SPUpd_TbAluguelDevolverVeiculo", vListOfSqlParameter);
        }

        public int Incluir(AluguelEntidade pAluguelEntidade)
        {
            return Convert.ToInt32(Conexao.ExecuteScalar("SPIns_TbAluguel", this.fnGetAllSqlParameters(pAluguelEntidade)));
        }

        public List<SqlParameter> fnGetAllSqlParameters(AluguelEntidade pAluguelEntidade)
        {
            List<SqlParameter> vListOfSqlParameter = new List<SqlParameter>();

            if (pAluguelEntidade.iId > 0)
            {
                vListOfSqlParameter.Add(Conexao.CriarParametro("@piId", DbType.Int32, pAluguelEntidade.iId));
            }

            vListOfSqlParameter.Add(Conexao.CriarParametro("@piIdTbMontadora", DbType.Int32, pAluguelEntidade.vMontadoraEntidade.iId));

            vListOfSqlParameter.Add(Conexao.CriarParametro("@piIdTbVeiculo", DbType.Int32, pAluguelEntidade.vVeiculoEntidade.iId));

            vListOfSqlParameter.Add(Conexao.CriarParametro("@piIdTbCliente", DbType.Int32, pAluguelEntidade.vClienteEntidade.iId));

            vListOfSqlParameter.Add(Conexao.CriarParametro("@piQtdDiarias", DbType.Int32, pAluguelEntidade.iQtdDiarias));

            vListOfSqlParameter.Add(Conexao.CriarParametro("@pdValorTotal", DbType.Decimal, pAluguelEntidade.dValorTotal));

            vListOfSqlParameter.Add(Conexao.CriarParametro("@piIdTbFormaPagamento", DbType.Int32, pAluguelEntidade.iIdTbFormaPagamento));

            vListOfSqlParameter.Add(Conexao.CriarParametro("@piIdTbVendedor", DbType.Int32, pAluguelEntidade.vVendedorEntidade.iId));

            vListOfSqlParameter.Add(Conexao.CriarParametro("@pdtDataInicioAluguel", DbType.DateTime, pAluguelEntidade.dtDataInicioAluguel));

            return vListOfSqlParameter;
        }
    }
}