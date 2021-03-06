using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CARVAN.Common
{
    public class Utils
    {
		// TODO: Xử lí đọc giá trị này từ file Web.config
		static string uploadDirPath = "http://localhost:65499/" + "Uploads";

		/// <summary>
		/// Lấy về địa chỉ URL tuyệt đối của image
		/// </summary>
		/// <param name="relativePath">Đường dẫn tương đối (lưu trong bảng image)</param>
		public static string GetImageUrl(string relativePath)
		{
			if (!string.IsNullOrWhiteSpace(relativePath))
			{
				return uploadDirPath + "/" + relativePath;
			}
			//return string.Empty;	// TODO: Có thể trả về URL của image mặc định
			return "/Content/default_image.png";
		}

		public static string PrependUniqueString(string target)
		{
			// Thêm thời gian vào trước chuỗi để tránh bị trùng lặp khi upload file
			return DateTime.Now.ToString("yyyyMMddHHmmss") + "_" + target;
		}
	}
}
