import catppuccin

# load your autoconfig, use this, if the rest of your config is empty!
config.load_autoconfig()

# Disable the status bar
c.statusbar.show = "never"

# Disable the tab bar
c.tabs.show = "never"

# valid options are 'mocha', 'macchiato', 'frappe', and 'latte'
# last argument (optional, default is False): enable the plain look for the menu rows
catppuccin.setup(c, "latte", False)

# Set the default and available search engine
c.url.searchengines = {
    "DEFAULT": "https://google.com/search?hl=en&q={}",
    "!d": "https://duckduckgo.com/?ia=web&q={}",
    "!dd": "https://thefreedictionary.com/{}",
    "!gh": "https://github.com/search?o=desc&q={}&s=stars",
    "!gi": "https://www.google.com/search?tbm=isch&q={}&tbs=imgo:1",
    "!gn": "https://news.google.com/search?q={}",
    "!m": "https://www.google.com/maps/search/{}",
    "!p": "https://pry.sh/{}",
    "!r": "https://www.reddit.com/search?q={}",
    "!tw": "https://twitter.com/search?q={}",
    "!w": "https://en.wikipedia.org/wiki/{}",
    "!yt": "https://www.youtube.com/results?search_query={}",
}

# New page
c.url.start_pages = ["https://www.google.com/"]
