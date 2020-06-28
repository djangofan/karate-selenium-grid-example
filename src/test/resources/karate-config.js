
function fn() {
    var env = karate.env = null ? "dev" : karate.env;

    var config = {
        grid: 'http://localhost:4444/wd/hub',
        po: read("classpath:po.json"),
        global: read("classpath:global.json")[env]
    }

    for (p in config) {
        karate.log ("##### config." + p, ": " + config[p]);
    }

    return config;
}

