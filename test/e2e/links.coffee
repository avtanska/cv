# Basic e2e testing with CasperJS
# Work in progress

casper.test.begin "Checking all links exist", 7, suite = (test) ->
  casper.start "http://avtanska.webfactional.com/", ->
    test.assertTitle "Atte Tanskanen - selected works", "title is the one expected"
    test.assertExists "a[href='/']", "Home link is found"
    test.assertExists "a[href='#/cv/fi']", "Finnish CV link is found"
    test.assertExists "a[href='#/cv/en']", "English CV link is found"
    test.assertExists "a[href='#/websites']", "Websites link is found"
    test.assertExists "a[href='#/github']", "GitHub link is found"
    test.assertExists "a[href='#/interests']", "Interest link is found"
	

  casper.run ->
    test.done()

