require "github/markup"

md_pandoc = GitHub::Markup::CommandImplementation.new(
    /md|mkdn?|mdwn|mdown|markdown|litcoffee/,
      "pandoc -f markdown --mathjax")
# Our command needs to go to the front of the queue, in order to take
# precedence before the stock GitHub::Markup::Markdown implementation
GitHub::Markup::markups.unshift(md_pandoc)

org_pandoc = GitHub::Markup::CommandImplementation.new(
	/org/,
	"pandoc -f org --mathjax")
GitHub::Markup::markups.unshift(org_pandoc)
