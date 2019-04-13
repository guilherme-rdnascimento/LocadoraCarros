﻿using LocadoraVeiculos.Util;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Model;
using Controller;

namespace LocadoraVeiculos.View
{
    public partial class FormGerenciamentoPais
    {
        public FormGerenciamentoPais()
        {
            InitializeComponent();
            GridDados.AutoGenerateColumns = false;
        }

        private void BtnCadastrar_Click(object sender, EventArgs e)
        {
            FormManutencaoPais vFormManutencaoPais = new FormManutencaoPais(Enumeradores.EnumEstadoForm.CADASTRO, null);
            vFormManutencaoPais.ShowDialog(this);
            CarregarGrid();
        }

        private void BtnAlterar_Click(object sender, EventArgs e)
        {
            try
            {
                PaisEntidade vPaisEntidade = new PaisEntidade();
                vPaisEntidade.iId = Int32.Parse(GridDados.SelectedRows[0].Cells["iId"].Value.ToString());

                vPaisEntidade = new PaisControlador().Consultar(vPaisEntidade).First();

                FormManutencaoPais vFormManutencaoPais = new FormManutencaoPais(Enumeradores.EnumEstadoForm.ALTERACAO, vPaisEntidade);
                vFormManutencaoPais.ShowDialog(this);

                CarregarGrid();
            }
            catch(Exception ex)
            {
                MessageBox.Show("Erro ao " + ex.Message
                                , "Erro"
                                , MessageBoxButtons.OK
                                , MessageBoxIcon.Error);
            }
        }

        private void BtnConsultar_Click(object sender, EventArgs e)
        {
            try
            {
                CarregarGrid();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Erro ao " + ex.Message
                                , "Erro"
                                , MessageBoxButtons.OK
                                , MessageBoxIcon.Error);
            }
        }

        private void CarregarGrid()
        {
            try
            {
                PaisEntidade vPaisEntidade = new PaisEntidade();
                vPaisEntidade.vNome = TxtNome.Text;

                GridDados.DataSource = new PaisControlador().Consultar(vPaisEntidade);
            }
            catch (Exception ex)
            {
                MessageBox.Show("Erro ao " + ex.Message
                                , "Erro"
                                , MessageBoxButtons.OK
                                , MessageBoxIcon.Error);
            }

        }

        private void BtnFechar_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}