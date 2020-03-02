using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

//agregados
using System.Data.SqlClient;
using System.Data;
using MVCLaboratorio.Utilerias;

namespace MVCLaboratorio.Controllers
{
    public class VideoController : Controller
    {
        //
        // GET: /Video/

        public ActionResult Index()
        {
            return View();
        }


        //--------------------------------------------------------------------------------------------------------------
        //---------------------------Creacion de videos
        public ActionResult Create()
        {
            return View();
        }
        //---------------------------Creacion de video (procesado de datos)
        [HttpPost]
        public ActionResult Create(int idvideo, string titulo, int reproduccion, string url)
        {
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@idvideo", idvideo));
            parametros.Add(new SqlParameter("@titulo", titulo));
            parametros.Add(new SqlParameter("@reproduccion", reproduccion));
            parametros.Add(new SqlParameter("@url", url));

            BaseHelper.ejecutarSentencia("sp_video_insertar", CommandType.StoredProcedure, parametros);

            return RedirectToAction("Index","Home");
        }


        //--------------------------------------------------------------------------------------------------------------
        //---------------------------Delete
        public ActionResult Delete()
        {
            return View();
        }
        //---------------------------Delete (procesado de datos)
        [HttpPost]
        public ActionResult Delete(int idvideo)
        {
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@idvideo", idvideo));


            return View();
        }


        //--------------------------------------------------------------------------------------------------------------
        //---------------------------Edit
        public ActionResult Edit()
        {
            return View();
        }
        //---------------------------Edit (procesado de datos)
        [HttpPost]
        public ActionResult Edit(int idvideo, string titulo, int reproduccion, string url)
        {
            return View();
        }

    }
}
