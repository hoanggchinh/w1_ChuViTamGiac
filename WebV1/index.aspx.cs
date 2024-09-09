using System;
using libFormula;

namespace WebV1
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnTinh_Click(object sender, EventArgs e)
        {
            try
            {
                // lấy giá trị từ các ô TextBox
                int a = int.Parse(txtA.Text);
                int b = int.Parse(txtB.Text);
                int c = int.Parse(txtC.Text);

                // kiểm tra xem ba cạnh có thể tạo thành tam giác ko
                if (a <= 0 || b <= 0 || c <= 0 || a + b <= c || a + c <= b || b + c <= a)
                {
                    // ko thể tạo thành tam giác hợp lệ
                    txtP.Text = "Error: Can't be a triangle!";
                }
                else
                {
                    // khởi tạo đối tượng từ libFormula
                    chuVi tamGiac = new chuVi();
                    tamGiac.a = a;
                    tamGiac.b = b;
                    tamGiac.c = c;

                    // tính chu vi
                    tamGiac.tamGiac();

                    
                    txtP.Text = tamGiac.p.ToString();
                }
            }
            catch (FormatException ex)
            {
                // xử lý lỗi nếu người dùng nhập vào ko phải số
                txtP.Text = "Error: Not a number!";
            }
            catch (Exception ex)
            {               
                // xử lý các lỗi khác 
                txtP.Text = "Error: " + ex.Message + "!";
            }
        }

    }
}
