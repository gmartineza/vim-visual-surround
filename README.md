# vim-visual-surround
A very simple vim plugin for surrounding selected text in paired characters `()`, `[]`, `{}`, `''`, and `""`.


## User guide


* Surrond selection with single quotes (`(`, `[` and `{` work the same way):

        |foo| bar ( press ' )  

        'foo' bar

* Surround selection with double quotes (a leader prefix is needed to avoid conflict with `"{register}`)

        |foo| bar ( press <leader>" )

        "foo" bar

* Surrond selection with a space and parentheses (`]` and `}` work the same way):

        |foo| bar ( press ) )

        ( foo ) bar


* All features also work on Visual Line mode:

        |foo bar | ( press [ )
        
        [foo bar]
        
  * Also on multiple lines:
        
        |foo bar |
        |Hello World! | (press } )
        
        { foo bar
        Hello World! }
        
* All features "work" on Visual Block

        |foo bar|
        |Hello W|orld! (press ] )
        
        [ foo bar
        Hello W ]orld!
