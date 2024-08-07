require_relative 'config'

URL = 'https://www.wizardingworld.com/'
SNAPE_NAME = 'Severus Snape'  

PAGE_TITLE = 'Wizarding World: The Official Home of Harry Potter' 

SEARCH_BAR = 'input[type=text]'
CURATED_SIDEBAR_TAB = '.Search_desktopLeftCol__QP_mI > ul:nth-child(1) > ul:nth-child(1) > li:nth-child(6) > span:nth-child(1)'

CURATED_LIST_RESULT = '.SearchResult_title__gC_Kz'
SNAPE_NAME_CSS = '.CollectionHero_header__3rDGu'

# High level Automation flow
# Will fail if if navigation issues
# Will fail if assertions dont work  

visit URL

# [ASSERT] page has expected title 
assert_title PAGE_TITLE

find(SEARCH_BAR).fill_in(with: SNAPE_NAME).send_keys :enter
find(CURATED_SIDEBAR_TAB).click

# [NOTICE:] moves to new window automaticaly
find(CURATED_LIST_RESULT).click

# [ASSERT] page includes Snape's name 
assert_text SNAPE_NAME

p '500 points to Gryffindor: Mischief managed'

# [NOTICE:] by default session closes automaticaly 
# Capybara.current_session.quit
