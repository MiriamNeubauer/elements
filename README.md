App Name: Elements


Description:
A Rails 3 based search filter app to extract & publish edited search results from web sources
[Project 1 MVP: Facebook application served from Heroku]

The app has a four step flow:

1. User selects a source from the available sources list (i.e.: Facebook, Youtube, Yelp,
   LinkedIn, Twitter, Flickr, Browser Search etc…)
   NOTE: The sources list will be for sites (except Browser Search presumably) that have API's available to use to interrogate the user site content.
   [Project 1 MVP: Facebook only (via fb graph API gem)]

2. User interacts with available search filter options for that source via a hierarchical
   structure of selection boxes (API pre-defined) and optional text field.
   [Project 1 MVP: Photo and hierarchical data only (name, picture, from, images (the set of image size links), place (location information))
   Explorable with Graph API Explorer: https://developers.facebook.com/tools/explorer?method=GET&path=507638706%3Ffields%3Did%2Cname

3. User interacts with results pane containing separate result instance containers:
   - drag & drop ordering, add, delete, edit-in-place (Rails In-Place editing gem(s))
   [Project 1 MVP: just display of non-interactive result instances]

4. User shares and/or exports results (Documents & Reports gem(s))
   [Project 1 MVP: no sharing, just export to PDF]