# make all the things

check:
	markdownlint content

linkcheck:
	linkinator "content/**/*.md" --markdown

linkcheck-json:
	linkinator "content/**/*.md" --markdown --format JSON --verbosity DEBUG

linkcheck-csv:
	linkinator "content/**/*.md" --markdown --format CSV
