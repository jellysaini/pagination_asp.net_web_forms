using Pagination.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Pagination
{
    public partial class Default : System.Web.UI.Page
    {
        private Int32 PageSize = 10;
        protected void Page_Load(object sender, EventArgs e)
        {
            OrderMasterRepo obj = new OrderMasterRepo();

            #region Paging
            Paging.Paging_Click += Paging_Paging_Click;
            Paging.PageSize = PageSize;
            Paging.TotalItems = obj.TotalItems();
            #endregion

            if (!IsPostBack)
            {
                BindGrid();
            }
        }

        private void BindGrid()
        {
            OrderMasterRepo obj = new OrderMasterRepo();
            Paging.CurrentPage = 1;

            Int32 _skip = PageSize * (Paging.CurrentPage - 1);

            var data = obj.Paging(PageSize, _skip);

            mainGrid.DataSource = data;
            mainGrid.DataBind();
        }

        private void Paging_Paging_Click(object sender, EventArgs e)
        {
            OrderMasterRepo obj = new OrderMasterRepo();
            Int32 _skip = PageSize * (Paging.CurrentPage - 1);

            var data = obj.Paging(PageSize, _skip);
            mainGrid.DataSource = data;
            mainGrid.DataBind();
        }
    }
}