require "github/markup"

org_emacs = GitHub::Markup::CommandImplementation.new(
	/org/,
	"compile-org")
GitHub::Markup::markups.unshift(org_emacs)
