Developed and Designed by Khotso Tsoaela

image used from flaticon and freepik.com


Setshelo is a Southern Sotho word for Container.

The point of this app is 
Track a container
and track delivery

Use django
and flutter

In essence order can be done on the django webapp and payment and everything
Delivery of package can be seen on the app. 
Photo can be taken
and parcel can be signed on the app


<!-- ================================================== -->

    Project Setup:
        Set up a new Django project for the web application.
        Create a new Flutter project for the mobile application.

    Database Design:
        Define the models for containers, orders, deliveries, and any other relevant entities. This will involve creating Django models for the backend.

    API Development:
        Create APIs in Django to handle operations like creating orders, updating order status, and retrieving delivery information.

    Authentication and Authorization:
        Implement user authentication and authorization to secure access to different parts of the app.

    Web Application:
        Develop the Django web application for order management. This includes allowing users to place orders, make payments, and view order history.

    Mobile Application:
        Use Flutter to create the mobile app. This will include features like tracking deliveries, taking photos, and obtaining digital signatures.

    Integrate APIs:
        In the Flutter app, integrate with the Django APIs to fetch data and perform actions related to orders and deliveries.

    UI/UX Design:
        Design user interfaces for both the web and mobile applications to ensure a smooth and intuitive user experience.

    Testing:
        Write tests for both the backend (Django) and frontend (Flutter) to ensure the app works as expected.

    Deployment:

    Deploy the Django web application on a web server and host the Flutter app on a mobile platform (e.g., Android Play Store, iOS App Store).


<!-- ========================================== -->
# Running the docker file

docker build -t setshelo .

# Create a Django project:
docker run -it --rm -v $(pwd):/app setshelo django-admin startproject SETSHELO .


# Install Flutter
RUN git clone https://github.com/flutter/flutter.git -b stable
ENV PATH="/app/flutter/bin:${PATH}"
RUN flutter doctor -v
