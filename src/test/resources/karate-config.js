
function fn() {
    karate.configure('logPrettyRequest', true);
    karate.configure('logPrettyResponse', true);
    var env = karate.env == null ? 'e2e' : karate.env;

    var config = {
        env: env,
        po: read("classpath:po/page_object.json"),
        global: read("classpath:global.json")[env]
    };
    for (p in config) {
        karate.log ("##### config." + p, ": " + config[p])
    }
    return config;
}

