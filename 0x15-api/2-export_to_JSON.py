#!/usr/bin/python3
"""
Exports to-do list information for a given employee ID to JSON format.
"""

import json
import requests
import sys

""" Constants """
BASE_URL = "https://jsonplaceholder.typicode.com/"


def get_user_data(user_id):
    """Retrieve user data from the API."""
    response = requests.get(BASE_URL + "users/{}".format(user_id))
    return response.json()


def get_user_todos(user_id):
    """Retrieve user's to-do list from the API."""
    response = requests.get(BASE_URL + "todos", params={"userId": user_id})
    return response.json()


def export_to_json(user_id, user_data, todos):
    """Export user's to-do list to a JSON file."""
    data = {user_id: [{"task": todo["title"], "completed": todo["completed"],
            "username": user_data["username"]} for todo in todos]}
    filename = str(user_id) + ".json"
    with open(filename, "w") as jsonfile:
        json.dump(data, jsonfile, indent=4)


def main():
    """Main function to export to-do list information."""
    if len(sys.argv) != 2:
        print("Usage: {} <user_id>".format(sys.argv[0]))
        sys.exit(1)

        user_id = sys.argv[1]
        user_data = get_user_data(user_id)
        if "username" not in user_data:
            print("User with ID {} not found.".format(user_id))
            sys.exit(1)

            todos = get_user_todos(user_id)
            export_to_json(user_id, user_data, todos)
            print("To-do list exported to {}.json".format(user_id))


if __name__ == "__main__":
    main()
