/*
 * This Java source file was generated by the Gradle 'init' task.
 */
package io.jah.healthapp;

import io.javalin.Javalin;
import io.javalin.core.JavalinConfig;
import io.javalin.core.util.RouteOverviewPlugin;
import io.javalin.http.util.RedirectToLowercasePathPlugin;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.time.Instant;
import java.util.List;
import java.util.Properties;

public class App {
    public static void main(String[] args) throws SQLException {
        // Set the http port to env[PORT]
        Integer httpPort = Integer.parseInt(System.getenv("PORT"));

        // Set up basic logging with slf4j


        // Try to just go direct to the JDBC driver and write raw SQL.
        Properties dbProps = new Properties();
//        dbProps.setProperty("options", "-c logLevel=DEBUG -c loggerFile=STDOUT -c tcpKeepAlive=true -c currentSchema=public");
        dbProps.setProperty("user", System.getenv("JDBC_USER"));
        dbProps.setProperty("password", System.getenv("JDBC_PASSWORD"));
        dbProps.setProperty("ssl", "false");
        Connection db = DriverManager.getConnection(System.getenv("JDBC_URL"), dbProps);

//        // Attempt to create a config object, through which we'll connect to the
//        // database. This is so much harder in Java than in pretty-much any other
//        // language I've ever written code in. And that's saying something...
//        DataSourceConfig dsc = new DataSourceConfig();
//        dsc.setCaptureStackTrace(true);
//        dsc.setHeartbeatSql("SELECT NOW()");
//        dsc.setUsername(System.getenv("JDBC_USER"));
//        dsc.setPassword(System.getenv("JDBC_PASSWORD"));
//        dsc.setUrl(System.getenv("JDBC_URL"));
//        dsc.setSchema("public");
//        DatabaseConfig dbcfg = new DatabaseConfig();
//        dbcfg.setDataSourceConfig(dsc);
//        dbcfg.setName(System.getenv("JDBC_DBNAME")); // workaround for a bug
//        dbcfg.setChangeLogAsync(false);
//        dbcfg.setChangeLogIncludeInserts(true);
//        dbcfg.setRegister(true);
//        dbcfg.addClass(BP.class); // TODO: Water when that's ready
//        Database db = DatabaseFactory.create(dbcfg);

        // Configure HTTP server/app layer
        JavalinConfig cfg = new JavalinConfig();
        cfg.registerPlugin(new RouteOverviewPlugin(("/routes")));
        Javalin app = Javalin.create(config -> {
            config.registerPlugin(new RouteOverviewPlugin("/routes"));
            config.registerPlugin(new RedirectToLowercasePathPlugin());
            config.requestLogger((ctx, ms) -> {
                config.enableDevLogging();
            });

//            config.server()
        });

        app.get("/", ctx -> {
//            Instant now = Instant.now();
//            Instant ago = now.minusSeconds(604800); // One week
//            List<BP> bp = new QBP().where().
//            List<BP> bp = new QBP().where()
//                    .raw("createdAt >= ? AND created_at <= ?", ago.toEpochMilli(), now.toEpochMilli())
//                    .findList();
            ctx.html("asdf");
        });

        app.start("0.0.0.0", httpPort);

    }
}
