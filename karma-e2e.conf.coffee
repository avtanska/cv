module.exports = (config) ->
  config.set
    basePath: "/"
    files: ["test/e2e/**/*.js"]
    autoWatch: false
    browsers: ["PhantomJS"]
    frameworks: ["ng-scenario"]
    singleRun: true
    proxies:
      "/": "http://localhost:8081/"

    plugins: [
      "karma-junit-reporter"
      "karma-chrome-launcher"
      "karma-phantomjs-launcher"
      "karma-jasmine"
      "karma-ng-scenario"
    ]
    junitReporter:
      outputFile: "test_out/e2e.xml"
      suite: "e2e"
