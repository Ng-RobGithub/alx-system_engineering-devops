#!/usr/bin/python3
"""
Gather employee data from API
"""

import re
import requests
import sys

REST_API = "https://jsonplaceholder.typicode.com"

def main():
    if len(sys.argv) > 1:
        if re.fullmatch(r'\d+', sys.argv[1]):
            employee_id = int(sys.argv[1])
            user_response = requests.get('{}/users/{}'.format(REST_API, employee_id)).json()
            tasks_response = requests.get('{}/todos'.format(REST_API)).json()
            employee_name = user_response.get('name')
            tasks = [task for task in tasks_response if task.get('userId') == employee_id]
            completed_tasks = [task for task in tasks if task.get('completed')]
            print('Employee {} is done with tasks({}/{}):'.format(employee_name, len(completed_tasks), len(tasks)))
            if completed_tasks:
                for task in completed_tasks:
                    print('\t {}'.format(task.get('title')))

                    if __name__ == '__main__':
                        main()
