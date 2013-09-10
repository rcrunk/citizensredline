dataSource {
  pooled = true
  driverClassName = "com.mysql.jdbc.Driver"
  dialect = "org.hibernate.dialect.MySQL5InnoDBDialect"
  url = "jdbc:mysql://localhost/redline"
  username = "notshown"
  password = "secret"
}
hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = false
    cache.region.factory_class = 'net.sf.ehcache.hibernate.EhCacheRegionFactory'
}

environments {
    development {
        dataSource {
          dbCreate = "update" // one of 'create', 'create-drop','update'
        }
    }
    test {
        dataSource {
          dbCreate = "update"
          pooled = true
          driverClassName = "com.mysql.jdbc.Driver"
          url = "jdbc:mysql://localhost/test_redline"
          username = "notshown"
          password = "secret"
        }
    }
    production {
        dataSource {
          dbCreate = "update"
          jndiName = "java:comp/env/redline"
          pooled = true
          properties {
             maxActive = -1
             minEvictableIdleTimeMillis=1800000
             timeBetweenEvictionRunsMillis=1800000
             numTestsPerEvictionRun=3
             testOnBorrow=true
             testWhileIdle=true
             testOnReturn=true
             validationQuery="SELECT 1"
          }
        }
    }
}
