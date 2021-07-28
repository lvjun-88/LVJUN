package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.*;
import java.text.SimpleDateFormat;
import java.util.*;

@Controller
public class FileController {

    //图片上传测试
    @ResponseBody
    @RequestMapping("/upload")
    public Map upload(MultipartFile file, HttpServletRequest request){

        String prefix="";//文件名称
        String dateStr="";//日期
        //保存上传
        OutputStream out = null;
        InputStream fileInput=null;
        try{
            if(file!=null){
                String originalName = file.getOriginalFilename();
                prefix=originalName.substring(originalName.lastIndexOf(".")+1);//获取文件后缀
                Date date = new Date();//获取当前时间
                String uuid = UUID.randomUUID()+"";//创建随机id
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");//获取当前时间
                dateStr = simpleDateFormat.format(date);//得到日期
//                String filepath = "F:\\webwebweb\\项目文件\\productweb\\src\\main\\webapp\\images\\upload" +"\\"+uuid+"." + prefix;
//                String filepath = request.getSession().getServletContext().getRealPath("/images/"+ dateStr+"\\"+uuid+"." + prefix);//使用相对地址
                String filepath = request.getSession().getServletContext().getRealPath("/images/img/"+""+uuid+"." + prefix);//存在服务器上root\images\imags\里面
//                String filepath = request.getSession().getServletContext().getRealPath("\\upload+\\"+uuid+"." + prefix);

//

                File files=new File(filepath);
                //打印查看上传路径
                System.out.println(filepath+"------------------------------******************************");
                if(!files.getParentFile().exists()){
                    files.getParentFile().mkdirs();
                }
                file.transferTo(files);
                Map<String,Object> map2=new HashMap<>();
                Map<String,Object> map=new HashMap<>();
                map.put("code",0);
                map.put("msg","");
                map.put("data",map2);
//                map2.put("src","/images/"+ dateStr+"/"+uuid+"." + prefix);//格式/images/2021-03-15/e905c947-1780-4b73-bb22-d74e8eafde20.jpg
                map2.put("src",uuid+"."+prefix);
                return map;
            }

        }catch (Exception e){
        }finally{
            try {
                if(out!=null){
                    out.close();
                }
                if(fileInput!=null){
                    fileInput.close();
                }
            } catch (IOException e) {
            }
        }
        Map<String,Object> map=new HashMap<>();
        map.put("code",1);
        map.put("msg","");
        return map;

    }


    //图片上传测试
    @ResponseBody
    @RequestMapping("/adminupload")
    public Map adminupload(MultipartFile file, HttpServletRequest request){

        String prefix="";//文件名称
        String dateStr="";//日期
        //保存上传
        OutputStream out = null;
        InputStream fileInput=null;
        try{
            if(file!=null){
                String originalName = file.getOriginalFilename();
                prefix=originalName.substring(originalName.lastIndexOf(".")+1);//获取文件后缀
                Date date = new Date();//获取当前时间
                String uuid = UUID.randomUUID()+"";//创建随机id
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");//获取当前时间
                dateStr = simpleDateFormat.format(date);//得到日期
//                String filepath = "F:\\webwebweb\\项目文件\\productweb\\src\\main\\webapp\\images\\upload" +"\\"+uuid+"." + prefix;
//                String filepath = request.getSession().getServletContext().getRealPath("/images/"+ dateStr+"\\"+uuid+"." + prefix);//使用相对地址
                String filepath = request.getSession().getServletContext().getRealPath("/images/adminimg/"+""+uuid+"." + prefix);//存在服务器上root\images\imags\里面
//                String filepath = request.getSession().getServletContext().getRealPath("\\upload+\\"+uuid+"." + prefix);

//

                File files=new File(filepath);
                //打印查看上传路径
                System.out.println(filepath+"------------------------------******************************");
                if(!files.getParentFile().exists()){
                    files.getParentFile().mkdirs();
                }
                file.transferTo(files);
                Map<String,Object> map2=new HashMap<>();
                Map<String,Object> map=new HashMap<>();
                map.put("code",0);
                map.put("msg","");
                map.put("data",map2);
//                map2.put("src","/images/"+ dateStr+"/"+uuid+"." + prefix);//格式/images/2021-03-15/e905c947-1780-4b73-bb22-d74e8eafde20.jpg
                map2.put("src",uuid+"."+prefix);
                return map;
            }

        }catch (Exception e){
        }finally{
            try {
                if(out!=null){
                    out.close();
                }
                if(fileInput!=null){
                    fileInput.close();
                }
            } catch (IOException e) {
            }
        }
        Map<String,Object> map=new HashMap<>();
        map.put("code",1);
        map.put("msg","");
        return map;

    }


    //文件上传测试
    @ResponseBody
    @RequestMapping("/uploadfile")
    public Map uploadfile(MultipartFile file, HttpServletRequest request){

        String prefix="";//文件名称
        String dateStr="";//日期
        //保存上传
        OutputStream out = null;
        InputStream fileInput=null;
        try{
            if(file!=null){
                String originalName = file.getOriginalFilename();
                Date date = new Date();//获取当前时间
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy");//获取当前时间
                dateStr = simpleDateFormat.format(date);//得到日期
                String filepath = request.getSession().getServletContext().getRealPath("/images/img/"+dateStr+"-"+originalName);//存在服务器上root\images\imags\里面
                File files=new File(filepath);
                //打印查看上传路径
                System.out.println(filepath+"------------------------------******************************");
                if(!files.getParentFile().exists()){
                    files.getParentFile().mkdirs();
                }
                file.transferTo(files);
                Map<String,Object> map2=new HashMap<>();
                Map<String,Object> map=new HashMap<>();
                map.put("code",0);
                map.put("msg","");
                map.put("data",map2);
                map2.put("src",dateStr+"-"+originalName);
                return map;
            }

        }catch (Exception e){
        }finally{
            try {
                if(out!=null){
                    out.close();
                }
                if(fileInput!=null){
                    fileInput.close();
                }
            } catch (IOException e) {
            }
        }
        Map<String,Object> map=new HashMap<>();
        map.put("code",1);
        map.put("msg","");
        return map;

    }







//    //添加图片
//    @RequestMapping("up.do")
//    @ResponseBody
//    public Map up(MultipartFile file) {
//        Map map = new HashMap();
//        Map data = new HashMap();
//        System.out.println("进入上传");
//        //设置图片保存的本地路径  前缀路径
//        //之前设置Tomcat的imgages路径 F:\webwebweb\项目文件\productweb\src\main\webapp\images
//        String filePath = "F:\\webwebweb\\项目文件\\productweb\\src\\main\\webapp\\images\\";
//        // 获取原始图片的扩展名
//        String originalFilename = file.getOriginalFilename();
//        // 使用uuid生成文件新的名字
//        String newFileName = UUID.randomUUID() + originalFilename;
//        //.replace("-", "");去掉UUID的 - 这步可以不写，我不喜欢uuid的 - 符号，所以就去掉了
//        newFileName = newFileName.replace("-", "");
//        // 封装上传文件位置的全路径就是前缀加上文件名称
//        File targetFile = new File(filePath, newFileName);
//        try {
//            //保存图片，这里会抛一个异常
//            file.transferTo(targetFile);
//        } catch (IOException e) {
//            e.printStackTrace();
//        }
//        map.put("code", 0);
//        map.put("msg", "");
//        map.put("data", data);
//        data.put("src", "http://localhost:8080/images/" + newFileName);
//        return map;
//    }
//
//    //添加图书
//    @RequestMapping(value = "addbook.do",produces = "text/html; charset=UTF-8")
//    @ResponseBody
//    public String addBook(String imgurl){
////        service.addBook(imgurl);
//        return "添加成功";
//    }


}
