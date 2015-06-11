package com.yusubori.spark_sample;

import static spark.Spark.*;

/**
 * Hello world!
 *
 */
public class App {

	public static void main(String[] args) {
		
		// listen port
		port(Integer.valueOf(System.getenv("PORT")));
		
		// routes
		get("/", (req,res) -> "This is java web application sample.");
		get("/hello", (req, res) -> "Hello World!!!");
	}
}
