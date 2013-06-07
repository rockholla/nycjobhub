# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Nycjobhub::Application.initialize!

# Dropbox config
# Dropbox::API::Config.app_key    = '253pznwgo9rn3de'
# Dropbox::API::Config.app_secret = 'xacwfkiqlr5bt3h'
# Dropbox::API::Config.mode       = "sandbox" # if you have a single-directory app or "dropbox" if it has access to the whole dropbox

# IMG_FOLDER_PATH = "/ss_images/"
YELP_API_V1_YWSID = "NiTcA0DmIs6Mf4dT2AkYqA"
YELP_API_V2_CONSUMER_KEY = "JicCkVJrfbEv7zF3zDpmqg"
YELP_API_V2_CONSUMER_SECRET = "KQ9CdlOT_6Na3vP2A2kO9LQFq1w"
YELP_API_V2_TOKEN = "qtNmMenMfC6UsOfmQNoLjGbG2iBItOz0"
YELP_API_V2_TOKEN_SECRET = "1I9EftgGrgDtDIhtqSiRxrOj70s"

STATES = ["NY","NJ","CT","AL","AK","AZ","AR","CA","CO","DE","FL","GA","HI","ID","IL","IN","IA","KS","KY","LA","MA","ME","MD","MI","MN","MS","MO","MT","NE","NV","NH","NM","NC","ND","OH","OK","OR","PA","RI","SC","SD","TN","TX","UT","VT","VA","WA","WV","WI","WY"]

LISTING_TYPES = [ ["Jobs","job"], ["Financial Empowerment Centers","center"] ]
NEAR_OPTIONS = ["Search near an address", "Search near a subway stop"]
WITHIN_RADIUS_OPTIONS = ["Within 4 blocks", "Walking distance (1 mile)", "Biking distance (2 mile)", "Within 5 miles", "Within 10 miles", "Within 15 miles", "Within 20 miles", "Within 25 miles"]
SUBWAY_LINES = ["A", "C", "E", "2", "3", "4", "5"]
SUBWAY_STOPS = ["Eastern Pkwy/Brooklyn Museum", "Franklin Ave", "Utica Ave"]
WITHIN_STOPS_OPTIONS = ["Within 5 stops", "Within 10 stops", "Within 15 stops", "Within 20 stops", "Within 25 stops"]
