<?php

include_once "/../lib/database.php";
/**
 * Created by PhpStorm.
 * User: optimized faisal
 * Date: 9/16/2016
 * Time: 11:02 PM
 */

class Shout
{
    private $db;
    public function __construct()
    {
        $this->db = new Database();
    }

    /**
     *  db theke data gulake tule anlam sob
     */
    public function getAllData()
    {
        $query = "select * from tbl_box order by id desc";
        $result = $this->db->select($query);
        return $result;
    }

    /**
     * ei method die db te data insert kore dibo
     * @param $data
     */
    public function insertData($data)
    {
        $name = mysqli_real_escape_string($this->db->link,$data['name']);
        $body = mysqli_real_escape_string($this->db->link,$data['body']);
        date_default_timezone_set('Asia/Dhaka');//asia er timezoe set kore dibo
        $time = date('h:i:s a',time());

        $query = "insert into tbl_box(name,body, time) values('$name' , '$body', '$time')";
        $this->db->insert($query);
        header("Location: index.php");

    }
}