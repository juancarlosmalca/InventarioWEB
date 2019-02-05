/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package rnegocio.entidades;

import static com.sun.org.apache.xalan.internal.lib.ExsltDatetime.date;
import java.util.Date;

/**
 *
 * @author MI PC
 */
public class Entrada {

    private int codigo;
    private String  fecha;
    private Producto producto;
    private int cantidad;
    private Proveedor proveedor;
    private String detalle;
    public Entrada() {
    }

    public Entrada(int codigo, String fecha, Producto producto, int cantidad, Proveedor proveedor, String detalle) {
        this.codigo = codigo;
        this.fecha = fecha;
        this.producto = producto;
        this.cantidad = cantidad;
        this.proveedor = proveedor;
        this.detalle = detalle;
    }


    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public Producto getProducto() {
        return producto;
    }

    public void setProducto(Producto producto) {
        this.producto = producto;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public Proveedor getProveedor() {
        return proveedor;
    }

    public void setProveedor(Proveedor proveedor) {
        this.proveedor = proveedor;
    }

    public String getDetalle() {
        return detalle;
    }

    public void setDetalle(String detalle) {
        this.detalle = detalle;
    }

}
