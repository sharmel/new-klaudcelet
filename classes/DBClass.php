<?php
class DBClass {

    private static $DB_CONNECTIONSTRING ='providers';
    private static $DB_HOST ='localhost:8889';
    //'sqlite:/Applications/MAMP/htdocs/Thesis_Project/db/providers.db';
    private static $DB_USERNAME = 'root';
    private static $DB_PASSWORD = '';

    private static $db = null;

    protected static function connect() {
        self::$db = new PDO('mysql:unix_socket=/cloudsql/white-set-110017:thesis-gcp-15;dbname=providers', self::$DB_USERNAME, self::$DB_PASSWORD);
            
            //self::$DB_CONNECTIONSTRING, self::$DB_USERNAME, self::$DB_PASSWORD);
        //mysql:unix_socket=/cloudsql/white-set-110017:thesis-gcp-15;dbname=providers

        /*
        AWS
$config = array(
    'host'      => 'klaudcelet-provider-new.cwjchxqjfoaj.eu-central-1.rds.amazonaws.com;port=3306',
    'username'  => 'klaudcelet',
    'password'  => 'adesqi1986',
    'dbname'    => 'klaudcelet'
);

$db = new PDO('mysql:host=' . $config['host'] . ';dbname=' . $config['dbname'], $config['username'], $config['password']);
$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);*/
    }

     public static function execute($sql, $values = array()) {
        if (self::$db === null) {
            self::connect();
        }
        $statement = self::$db->prepare($sql);
        $statement->execute($values);
            
        return $statement;
    }

    public static function query($sql, $values = array()) {
        $statement = self::execute($sql, $values);
        return $statement->fetchAll(PDO::FETCH_CLASS);

    
    }

}