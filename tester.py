import unittest
import sys
import os

# Add the path to your main.py file's directory
sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__), '..')))

# Import your Flask application instance from main.py
from main import app 

class TestApp(unittest.TestCase):

    def setUp(self):
        self.app = app.test_client()

    def test_index(self):
        response = self.app.get('/')
        self.assertEqual(response.status_code, 200)

    def test_static_files(self):
        response = self.app.get('/static/styles.css')
        self.assertIn(response.status_code, [200, 304])

    def test_favicon(self):
        response = self.app.get('/static/favicon.ico')
        self.assertIn(response.status_code, [200, 304])

if __name__ == '__main__':
    unittest.main()
