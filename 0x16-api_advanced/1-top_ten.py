#!/usr/bin/python3
'''
    this module contains the function top_ten
'''
import requests


def top_ten(subreddit):
    url = "https://www.reddit.com/r/{}/hot.json?limit=10".format(subreddit)
    headers = {'User-Agent': 'My User Agent 1.0'}
    response = requests.get(url, headers=headers, allow_redirects=False)

    if response.status_code != 200:
        print("None")
        return

    try:
        data = response.json()
        children = data['data']['children']
        for post in children:
            print(post['data']['title'])
    except Exception as e:
        print("Error:", e)


if __name__ == '__main__':
    import sys
    if len(sys.argv) < 2:
        print("Please pass an argument for the subreddit to search.")
    else:
        top_ten(sys.argv[1])
