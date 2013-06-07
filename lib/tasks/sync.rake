task :sync => :environment do
    print "Syncing all...\n"
    Listing.sync_all
    print "Done\n"
end