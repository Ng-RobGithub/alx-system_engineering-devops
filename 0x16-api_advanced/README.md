=======================================0x16-api_advanced===================================

Task 0. How many subs?
mandatory
Write a function that queries the Reddit API and returns the number of subscribers (not active users, total subscribers) for a given subreddit. If an invalid subreddit is given, the function should return 0.

Task 1. Top Ten
mandatory
Write a function that queries the Reddit API and prints the titles of the first 10 hot posts listed for a given subreddit.

Task 2. Recurse it!
mandatory
Write a recursive function that queries the Reddit API and returns a list containing the titles of all hot articles for a given subreddit. If no results are found for the given subreddit, the function should return None.

Task 3. Count it!
#advanced
Write a recursive function that queries the Reddit API, parses the title of all hot articles, and prints a sorted count of given keywords (case-insensitive, delimited by spaces. Javascript should count as javascript, but java should not).
