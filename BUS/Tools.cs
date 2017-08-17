using Facebook;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Configuration;
using System.Security.Cryptography;
using System.Globalization;

namespace BUS
{
    public class Tools
    {
        public Tools() { }

        public string ChangeText(string s)
        {
            Regex regex = new Regex("\\p{IsCombiningDiacriticalMarks}+");
            string temp = s.Normalize(NormalizationForm.FormD);
            return regex.Replace(temp, String.Empty).Replace('\u0111', 'd').Replace('\u0110', 'D').Replace(" ","-").ToLower();
        }

        public string UnChangeText(string s)
        {
            Regex regex = new Regex("\\p{IsCombiningDiacriticalMarks}+");
            string temp = s.Normalize(NormalizationForm.FormD);
            return regex.Replace(temp, String.Empty).Replace('\u0110', 'd').Replace('\u0111', 'D').Replace("-", " ");
        }

        //Login with Facebook
        public void LoginFacebook()
        {
            var fb = new FacebookClient();
            var loginURL = fb.GetLoginUrl(new {
                client_id = ConfigurationManager.AppSettings["ID_AppFacebook"],
                client_secret= ConfigurationManager.AppSettings["ID_AppSecret"],
            });
        }
        //Encrypt password
        public string EncryptText(string toEncrypt, bool useHashing) //Hàm mã hóa chuỗi
        {
            byte[] keyArray;
            byte[] toEncryptArray = UTF8Encoding.UTF8.GetBytes(toEncrypt);
            if (useHashing)
            {
                MD5CryptoServiceProvider hashmd5 = new MD5CryptoServiceProvider();
                keyArray = hashmd5.ComputeHash(UTF8Encoding.UTF8.GetBytes("studybroad8888"));
            }
            else keyArray = UTF8Encoding.UTF8.GetBytes("studybroad8888");
            TripleDESCryptoServiceProvider tdes = new TripleDESCryptoServiceProvider();
            tdes.Key = keyArray;
            tdes.Mode = CipherMode.ECB;
            tdes.Padding = PaddingMode.PKCS7;
            ICryptoTransform cTransform = tdes.CreateEncryptor();
            byte[] resultArray = cTransform.TransformFinalBlock(toEncryptArray, 0, toEncryptArray.Length);
            return Convert.ToBase64String(resultArray, 0, resultArray.Length);
        }

        public  string DecryptText(string toDecrypt, bool useHashing)//Hàm giải mã chuỗi
        {
            byte[] keyArray;
            byte[] toEncryptArray = Convert.FromBase64String(toDecrypt);
            if (useHashing)
            {
                MD5CryptoServiceProvider hashmd5 = new MD5CryptoServiceProvider();
                keyArray = hashmd5.ComputeHash(UTF8Encoding.UTF8.GetBytes("studybroad8888"));
            }
            else keyArray = UTF8Encoding.UTF8.GetBytes("studybroad8888");
            TripleDESCryptoServiceProvider tdes = new TripleDESCryptoServiceProvider();
            tdes.Key = keyArray;
            tdes.Mode = CipherMode.ECB;
            tdes.Padding = PaddingMode.PKCS7;
            ICryptoTransform cTransform = tdes.CreateDecryptor();
            byte[] resultArray = cTransform.TransformFinalBlock(toEncryptArray, 0, toEncryptArray.Length);
            return UTF8Encoding.UTF8.GetString(resultArray);
        }

        public bool IsNumber(string pText)
        {
            //Regex regex = new Regex(@"^[-+]?[0-9]*\.?[0-9]+$");
            Regex regex = new Regex(@"^\d+$");
            return regex.IsMatch(pText);
        }

        //Radom Avatar Customer
        public string Radom_Avatar_Customer()
        {
            string[] name_Avatar = new string[]
            {
                "a.png","b.png","c.png",
                "d.png","e.png","f.png",
                "g.png","h.png","i.png",
                "j.png","k.png","l.png",
                "m.png","n.png","o.png",
                "p.png","q.png","t.png",
                "u.png","v.png","x.png",
                "y.png","z.png"
            };
            Random ran = new Random();
            int em = ran.Next(0, name_Avatar.Length);
            return name_Avatar[em];
        }
        public string FormatPrice(int price)
        {
            CultureInfo original = new CultureInfo("vi-VN", false);
            NumberFormatInfo vietNfi = (NumberFormatInfo)original.NumberFormat.Clone();
            vietNfi.CurrencySymbol = "₫";
            string[] a = price.ToString("C", vietNfi).Split(',');
            return a[0]+ "\0 ₫";
        }
    }
}
