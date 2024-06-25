# use the production server instead of developer server to avoide the Warrning
# [WARNING: This is a development server. Do not use it in a production deployment. Use a production WSGI server instead.]


from main import app as application

if __name__ == '__main__':
    application.run()
