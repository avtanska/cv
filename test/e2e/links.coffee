# Basic e2e testing with CasperJS
# Work in progress

casper.test.begin 'Checking all links lead to correct page', 5, suite = (test) ->
    casper.start 'http://avtanska.webfactional.com/', ->

    casper.then ->
        @clickLabel 'Suomeksi' ,'a'
    casper.then ->
        @wait 1000
    casper.then ->
        test.assertTextExists 'CV - suomeksi', 'Finnish CV ok'
	
    casper.then ->
        @clickLabel 'In English' ,'a'
    casper.then ->
        @wait 1000
    casper.then ->
        test.assertTextExists 'CV - in English', 'English CV ok'

    casper.then ->
        @clickLabel 'Websites' ,'a'
    casper.then ->
        @wait 3000
    casper.then ->
        test.assertTextExists 'www.kiuas.net', 'Websites ok'

    casper.then ->
        @clickLabel 'GitHub' ,'a'
    casper.then ->
        @wait 1000
    casper.then ->
        test.assertTextExists 'GitHub repos', 'GitHub ok'

    casper.then ->
        @clickLabel 'Interests' ,'a'
    casper.then ->
        @wait 1000
    casper.then ->
        test.assertTextExists 'Eager to learn', 'Interests ok'

    casper.run ->
        test.done()

