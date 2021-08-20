using Npgsql;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace DemoDB
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private NpgsqlConnection conn;
        string connstring = String.Format("Server={0};Port={1};User Id={2};Password={3};Database={4};","localhost", "5432", "postgres", "gf220284", "F1");
        private DataTable dt;
        private NpgsqlCommand cmd;
        private NpgsqlCommandBuilder scb;
        private string sql = null;
        private int flag = 0;
        private NpgsqlDataAdapter sda;
        private string _originalValue;
 
        private void Form1_Load(object sender, EventArgs e)
        {
            conn = new NpgsqlConnection(connstring);
        }



        private void legends_button_Click(object sender, EventArgs e)
        {
            try
            {
                flag = 1;
                //load all Legendary Drivers
                dataTable.DataSource = null;
                conn.Open();
                sql = "select * from Legendary_Drivers";
                cmd = new NpgsqlCommand(sql, conn);
                dt = new DataTable();
                dt.Load(cmd.ExecuteReader());
                dataTable.DataSource = dt;
                conn.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error:  " + ex.Message, "FAIL!", MessageBoxButtons.OK, MessageBoxIcon.Error);
                conn.Close();
            }
        }

        private void races_button_Click(object sender, EventArgs e)
        {
            try
            {
                flag = 2;
                dataTable.DataSource = null;
                conn.Open();
                sql = "select * from Races_2020";
                cmd = new NpgsqlCommand(sql, conn);
                dt = new DataTable();
                dt.Load(cmd.ExecuteReader());
                dataTable.DataSource = dt;
                conn.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error:  " + ex.Message, "FAIL!", MessageBoxButtons.OK, MessageBoxIcon.Error);
                conn.Close();
            }
        }

        private void circuits_button_Click(object sender, EventArgs e)
        {
            try
            {
                flag = 3;
                dataTable.DataSource = null;
                conn.Open();
                sql = "select * from Circuits";
                cmd = new NpgsqlCommand(sql, conn);
                dt = new DataTable();
                dt.Load(cmd.ExecuteReader());
                dataTable.DataSource = dt;
                conn.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error:  " + ex.Message, "FAIL!", MessageBoxButtons.OK, MessageBoxIcon.Error);
                conn.Close();
            }
        }

        private void budget_button_Click(object sender, EventArgs e)
        {
            try
            {
                flag = 4;
                dataTable.DataSource = null;
                conn.Open();
                sql = "select * from Team_Budgets_2020";
                cmd = new NpgsqlCommand(sql, conn);
                dt = new DataTable();
                dt.Load(cmd.ExecuteReader());
                dataTable.DataSource = dt;
                conn.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error:  " + ex.Message, "FAIL!", MessageBoxButtons.OK, MessageBoxIcon.Error);
                conn.Close();
            }
        }

        private void mercedes_button_Click(object sender, EventArgs e)
        {
            try
            {
                flag = 5;
                dataTable.DataSource = null;
                conn.Open();
                sql = "select team_name, driver_first_name, driver_last_name, base, championships from Racing_Teams_2020, Drivers_2020 where team_name = driver_racing_team and team_name = 'Mercedes-AMG Petronas F1 Team' ";
                cmd = new NpgsqlCommand(sql, conn);
                dt = new DataTable();
                dt.Load(cmd.ExecuteReader());
                dataTable.DataSource = dt;
                conn.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error:  " + ex.Message, "FAIL!", MessageBoxButtons.OK, MessageBoxIcon.Error);
                conn.Close();
            }
        }

        private void ferrari_button_Click(object sender, EventArgs e)
        {
            try
            {
                flag = 6;
                dataTable.DataSource = null;
                conn.Open();
                sql = "select team_name, driver_first_name, driver_last_name, base, championships from Racing_Teams_2020, Drivers_2020 where team_name = driver_racing_team and team_name = 'Scuderia Ferrari Mission Winnow' ";
                cmd = new NpgsqlCommand(sql, conn);
                dt = new DataTable();
                dt.Load(cmd.ExecuteReader());
                dataTable.DataSource = dt;
                conn.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error:  " + ex.Message, "FAIL!", MessageBoxButtons.OK, MessageBoxIcon.Error);
                conn.Close();
            }
        }

        private void mclaren_button_Click(object sender, EventArgs e)
        {
            try
            {
                flag = 7;
                dataTable.DataSource = null;
                conn.Open();
                sql = "select team_name, driver_first_name, driver_last_name, base, championships from Racing_Teams_2020, Drivers_2020 where team_name = driver_racing_team and team_name = 'McLaren F1 Team' ";
                cmd = new NpgsqlCommand(sql, conn);
                dt = new DataTable();
                dt.Load(cmd.ExecuteReader());
                dataTable.DataSource = dt;
                conn.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error:  " + ex.Message, "FAIL!", MessageBoxButtons.OK, MessageBoxIcon.Error);
                conn.Close();
            }
        }

        private void alfa_romeo_button_Click(object sender, EventArgs e)
        {
            try
            {
                flag = 8;
                dataTable.DataSource = null;
                conn.Open();
                sql = "select team_name, driver_first_name, driver_last_name, base, championships from Racing_Teams_2020, Drivers_2020 where team_name = driver_racing_team and team_name = 'Alfa Romeo Racing Orlen' ";
                cmd = new NpgsqlCommand(sql, conn);
                dt = new DataTable();
                dt.Load(cmd.ExecuteReader());
                dataTable.DataSource = dt;
                conn.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error:  " + ex.Message, "FAIL!", MessageBoxButtons.OK, MessageBoxIcon.Error);
                conn.Close();
            }
        }

        private void renault_button_Click(object sender, EventArgs e)
        {
            try
            {
                flag = 9;
                dataTable.DataSource = null;
                conn.Open();
                sql = "select team_name, driver_first_name, driver_last_name, base, championships from Racing_Teams_2020, Drivers_2020 where team_name = driver_racing_team and team_name = 'Renault DP World F1 Team' ";
                cmd = new NpgsqlCommand(sql, conn);
                dt = new DataTable();
                dt.Load(cmd.ExecuteReader());
                dataTable.DataSource = dt;
                conn.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error:  " + ex.Message, "FAIL!", MessageBoxButtons.OK, MessageBoxIcon.Error);
                conn.Close();
            }
        }

        private void haas_button_Click(object sender, EventArgs e)
        {
            try
            {
                flag = 10;
                dataTable.DataSource = null;
                conn.Open();
                sql = "select team_name, driver_first_name, driver_last_name, base, championships from Racing_Teams_2020, Drivers_2020 where team_name = driver_racing_team and team_name = 'Haas F1 Team' ";
                cmd = new NpgsqlCommand(sql, conn);
                dt = new DataTable();
                dt.Load(cmd.ExecuteReader());
                dataTable.DataSource = dt;
                conn.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error:  " + ex.Message, "FAIL!", MessageBoxButtons.OK, MessageBoxIcon.Error);
                conn.Close();
            }
        }

        private void alpha_tauri_button_Click(object sender, EventArgs e)
        {
            try
            {
                flag = 11;
                dataTable.DataSource = null;
                conn.Open();
                sql = "select team_name, driver_first_name, driver_last_name, base, championships from Racing_Teams_2020, Drivers_2020 where team_name = driver_racing_team and team_name = 'Scuderia AlphaTauri Honda' ";
                cmd = new NpgsqlCommand(sql, conn);
                dt = new DataTable();
                dt.Load(cmd.ExecuteReader());
                dataTable.DataSource = dt;
                conn.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error:  " + ex.Message, "FAIL!", MessageBoxButtons.OK, MessageBoxIcon.Error);
                conn.Close();
            }
        }

        private void williams_button_Click(object sender, EventArgs e)
        {
            try
            {
                flag = 12;
                dataTable.DataSource = null;
                conn.Open();
                sql = "select team_name, driver_first_name, driver_last_name, base, championships from Racing_Teams_2020, Drivers_2020 where team_name = driver_racing_team and team_name = ' Williams Racing' ";
                cmd = new NpgsqlCommand(sql, conn);
                dt = new DataTable();
                dt.Load(cmd.ExecuteReader());
                dataTable.DataSource = dt;
                conn.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error:  " + ex.Message, "FAIL!", MessageBoxButtons.OK, MessageBoxIcon.Error);
                conn.Close();
            }
        }


        private void racing_point_button_Click(object sender, EventArgs e)
        {
            try
            {
                flag = 13;
                dataTable.DataSource = null;
                conn.Open();
                sql = "select team_name, driver_first_name, driver_last_name, base, championships from Racing_Teams_2020, Drivers_2020 where team_name = driver_racing_team and team_name = 'BWT Racing Point F1 Team' ";
                cmd = new NpgsqlCommand(sql, conn);
                dt = new DataTable();
                dt.Load(cmd.ExecuteReader());
                dataTable.DataSource = dt;
                conn.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error:  " + ex.Message, "FAIL!", MessageBoxButtons.OK, MessageBoxIcon.Error);
                conn.Close();
            }
        }

        private void red_bull_button_Click(object sender, EventArgs e)
        {
            try
            {
                flag = 14;
                dataTable.DataSource = null;
                conn.Open();
                sql = "select team_name, driver_first_name, driver_last_name, base, championships from Racing_Teams_2020, Drivers_2020 where team_name = driver_racing_team and team_name = 'Aston Martin Red Bull Racing' ";
                cmd = new NpgsqlCommand(sql, conn);
                dt = new DataTable();
                dt.Load(cmd.ExecuteReader());
                dataTable.DataSource = dt;
                conn.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error:  " + ex.Message, "FAIL!", MessageBoxButtons.OK, MessageBoxIcon.Error);
                conn.Close();
            }
        }

        private void search_box_TextChanged(object sender, EventArgs e)
        {

            if (search_comboBox.Text == "Team Name 2020")
            {
                try
                {
                    dataTable.DataSource = null;
                    conn.Open();
                    sql = "select Racing_Teams_2020.team_name, Racing_Teams_2020.base,Racing_Teams_2020.championships, Team_Budgets_2020.team_budget, Drivers_2020.driver_first_name, Drivers_2020.driver_last_name  from Racing_Teams_2020, Team_Budgets_2020, Drivers_2020 where Racing_Teams_2020.team_name like '%" + search_box.Text+ "%' and Team_Budgets_2020.team_name like '%" + search_box.Text + "%' and Racing_Teams_2020.team_name = Team_Budgets_2020.team_name and Drivers_2020.driver_racing_team like '%" + search_box.Text + "%' and Drivers_2020.driver_racing_team = Racing_Teams_2020.team_name";
                    cmd = new NpgsqlCommand(sql, conn);
                    dt = new DataTable();
                    dt.Load(cmd.ExecuteReader());
                    dataTable.DataSource = dt;
                    conn.Close();
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Error:  " + ex.Message, "FAIL!", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    conn.Close();
                }
            }
            else if (search_comboBox.Text == "Driver Name 2020")
            {
                try
                {
                    dataTable.DataSource = null;
                    conn.Open();
                    sql = "select * from Drivers_2020 where Drivers_2020.driver_first_name like '%"+search_box.Text+"%' or Drivers_2020.driver_last_name like '%"+search_box.Text+"%'";
                    cmd = new NpgsqlCommand(sql, conn);
                    dt = new DataTable();
                    dt.Load(cmd.ExecuteReader());
                    dataTable.DataSource = dt;
                    conn.Close();
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Error:  " + ex.Message, "FAIL!", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    conn.Close();
                }
            }
            else if (search_comboBox.Text == "Circuit Name")
            {
                try
                {
                    dataTable.DataSource = null;
                    conn.Open();
                    sql = "select * from Circuits where Circuits.circuit_name like '%" + search_box.Text + "%'";
                    cmd = new NpgsqlCommand(sql, conn);
                    dt = new DataTable();
                    dt.Load(cmd.ExecuteReader());
                    dataTable.DataSource = dt;
                    conn.Close();
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Error:  " + ex.Message, "FAIL!", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    conn.Close();
                }
            }
            else if (search_comboBox.Text == "Past Teams")
            {
                try
                {
                    dataTable.DataSource = null;
                    conn.Open();
                    sql = "select * from Racing_Teams_Over_the_Years where team_name like '%"+search_box.Text+"%'";
                    cmd = new NpgsqlCommand(sql, conn);
                    dt = new DataTable();
                    dt.Load(cmd.ExecuteReader());
                    dataTable.DataSource = dt;
                    conn.Close();
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Error:  " + ex.Message, "FAIL!", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    conn.Close();
                }
            }
            else if (search_comboBox.Text == "Iconic Drivers")
            {
                try
                {
                    dataTable.DataSource = null;
                    conn.Open();
                    sql = "select * from Legendary_Drivers where driver_name like '%" + search_box.Text + "%' or driver_last_name like '%" + search_box.Text + "%'";
                    cmd = new NpgsqlCommand(sql, conn);
                    dt = new DataTable();
                    dt.Load(cmd.ExecuteReader());
                    dataTable.DataSource = dt;
                    conn.Close();
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Error:  " + ex.Message, "FAIL!", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    conn.Close();
                }
            }
        }

        
    }
}
