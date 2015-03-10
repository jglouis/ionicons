## Recolour script

There is a recolour.sh script inside the src directory. It can be run to automate part of the work needed to adapt the sjjb svg sources.

Some svgs from SJJB have needed manual editing.

- The rounded border has to be deleted. (Making it transparent will produce a completely black character)
- In case the image has an offset, the recommended way is to create a new svg file with Inkscape and manually copy the paths.
- For transparency issues, first make sure there is no grey-ish semi-transparent paths in the svg. If the problem of transparency is not resolved, try to convert stroke to paths and/or reduce the strokes to 1px width. 

## Build Instructions

This repo already comes with all the files built and ready to go, but can also build the fonts from the source. Requires Python, FontForge and Sass:

1) Install FontForge, which is the program that creates the font files from the SVG files:

    $ brew install fontforge ttfautohint

2) Install [Sass](http://sass-lang.com/)

    $ gem install sass
 
3) Install sfnt2woff

    # On Linux
    $ wget http://people.mozilla.com/~jkew/woff/woff-code-latest.zip
    $ unzip woff-code-latest.zip -d sfnt2woff && cd sfnt2woff && make && sudo mv sfnt2woff /usr/local/bin/

4) Add or subtract files from the `src/` folder you'd like to be apart of the font files.

5) Modify any settings in the `builder/manifest.json` file. You can change the name of the font-family and CSS classname prefix.

6) Run the build command:

    python ./builder/generate.py


## License

Ionicons is licensed under the [MIT license](http://opensource.org/licenses/MIT).
