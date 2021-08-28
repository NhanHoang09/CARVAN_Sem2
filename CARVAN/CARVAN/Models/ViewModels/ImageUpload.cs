using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CARVAN.Models.ViewModels
{

		public class ImageUpload
		{
			public Product Product { get; set; }
			public HttpPostedFileBase UploadFile1 { get; set; }
			public HttpPostedFileBase UploadFile2 { get; set; }
			public HttpPostedFileBase UploadFile3 { get; set; }
		}
	
}