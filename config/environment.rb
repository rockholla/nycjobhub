# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Nycjobhub::Application.initialize!

# Dropbox config
# Dropbox::API::Config.app_key    = '253pznwgo9rn3de'
# Dropbox::API::Config.app_secret = 'xacwfkiqlr5bt3h'
# Dropbox::API::Config.mode       = "sandbox" # if you have a single-directory app or "dropbox" if it has access to the whole dropbox

# IMG_FOLDER_PATH = "/ss_images/"

STATES = [nil, "NY","NJ","CT","AL","AK","AZ","AR","CA","CO","DE","FL","GA","HI","ID","IL","IN","IA","KS","KY","LA","MA","ME","MD","MI","MN","MS","MO","MT","NE","NV","NH","NM","NC","ND","OH","OK","OR","PA","RI","SC","SD","TN","TX","UT","VT","VA","WA","WV","WI","WY"]

