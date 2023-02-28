/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.help;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */


import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;

import java.io.FileOutputStream;

import java.io.InputStream;

import java.io.FileOutputStream;

import java.io.File;

import java.io.InputStream;




public class helpper {
    public static boolean deleteFile(String path)
    {
        boolean f=false;
        try
        {
            File file=new File(path);
           f= file.delete();
            
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
        return f;
    }
    public static boolean saveFile(InputStream is , String path)
    {
        boolean f=false;
        try
        {
            byte b[]= new byte[is.available()];//is maa jetli byte no data aave aetlo byte array maa nakhi dese
            is.read(b);
            FileOutputStream fos = new FileOutputStream(path);
                fos.write(b);
                fos.flush(); 
                fos.close();
            f=true;
        }
        catch(Exception e)
        {
            System.out.println(e);
           
        }
        return f;
    }
}
