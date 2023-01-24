<a name="readme-top"></a>

<!-- TABLE OF CONTENTS -->

# 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
  - [🚀 Live Demo](#live-demo)
- [💻 Getting Started](#getting-started)
  - [Setup](#setup)
  - [Prerequisites](#prerequisites)
  - [Install](#install)
  - [Usage](#usage)
  - [Run tests](#run-tests)
  - [Deployment](#triangular_flag_on_post-deployment)
- [👥 Authors](#authors)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgements)
- [❓ FAQ (OPTIONAL)](#faq)
- [📝 License](#license)

<!-- PROJECT DESCRIPTION -->

# 📖 The Future Mobility Backend <a name="about-project"></a>

**The Future Mobility Backend** is a Ruby on Rails API-only server to manage CRUD of vehicles and reservations in an electric cars website, which also allows the creation of new users and the login through an authentication mechanism. You can test it using the respective front-end webapp (https://futuremobility.netlify.app/). This full stack challenge was developed by a team of four members

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

<details>
  <summary>Client</summary>
  <ul>
    <li><a href="https://reactjs.org/">React JS</a></li>
  </ul>
</details>

<details>
  <summary>Server</summary>
  <ul>
    <li><a href="https://rubyonrails.org">Ruby on Rails</a></li>
  </ul>
</details>

<details>
<summary>Database</summary>
  <ul>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>
</details>

<!-- Features -->
### Kanban Board <a name="key-features"></a>

- [kanban Board project](https://github.com/users/Agetuni/projects/3)
- [Inital picture ](https://user-images.githubusercontent.com/55507343/211047900-c2f5683d-c5fa-4f72-8363-414811a577c8.png)
- 4 Team Members [@wandergithub](https://github.com/wandergithub)  [@Neeraj-Bhardwaj](https://github.com/rebel216)  [Carlos Molina](https://github.com/cmolinan) [@Agetuni](https://github.com/Agetuni)

<!-- Features -->

### Key Features <a name="key-features"></a>

- **Create, Read and Delete operations of Vehicles**
- **Sign-up and Login of Users**
- **Create, Read and Delete operations of Reservations**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LIVE DEMO -->


## 🚀 Live Demo <a name="live-demo"></a>

- [API Backend Service Link](https://future-mobility-backend.onrender.com/api/v1)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>

To get a local copy up and running, follow these steps.

### Prerequisites

In order to run this Backend API Server you need:

- Ruby
- Rails
- Postgresql 
#### Github
- Enter this url: [https://github.com/Agetuni/the_future_mobility_backend](https://github.com/Agetuni/the_future_mobility_backend) in your web browser.
- Once opened navigate to the top left level of the project a green code download button will be visible on the righthand side.
- Select the download Zip option from drop-down menu.
- Once the download is complete you will be able to access my project locally.

#### Local (Terminal)

```sh
  git clone https://github.com/Agetuni/the_future_mobility_backend.git
```

### Install

Install this project with the steps below:

- After cloning, type `cd the_future_mobility_backend` to access the project on the terminal.
- Run `bundle install` to install all the required dependancies.
- For developmente environment:
  - Create Database with `rails db:create RAILS_ENV=development`
  - Migrate Database with `rails db:migrate RAILS_ENV=development`
  - Populate data with `rails db:seed RAILS_ENV=development`

- For testing porpouses:
  - Create Database with `rails  db:create RAILS_ENV=test`
  - Migrate Database with `rails db:migrate RAILS_ENV=test`

### Usage

To run the project, execute the following command:
- Run `rails s` to start a development server (it will run in port 3001)
- Now, you are ready to consume the API endpoints

To run the tests of the project, execute the following command:
- Run `rspec` to start the tests
<br><br>

### How to use this API

- Consult the documentation in this link:
https://documenter.getpostman.com/view/11181665/2s8ZDU74mn

- You can use a local or remote Base URL

   * Local: <a href="#">http://localhost:3001</a>

   * Remote (live demo): <a href="#">https://future-mobility-backend.onrender.com</a>


<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- AUTHORS -->

## 👥 Authors <a name="authors"></a>


## 👤 Carlos Molina
- GitHub: [Carlos Molina](https://github.com/cmolinan)
- LinkedIn: [Carlos Molina](https://www.linkedin.com/in/carlosmolinan)

## 👤 Wander Gonzalez

- GitHub: [@wandergithub](https://github.com/wandergithub)
- Twitter: [@wanderklk1](https://twitter.com/wanderklk1)
- LinkedIn: [Wander A. Gonzalez](https://www.linkedin.com/in/wander-a-gonzalez-53127b205/)


## 👤 Aleazar Yilma

- GitHub: [@Agetuni](https://github.com/Agetuni)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/aleazaryilma/)
- AngelList: [timo-wester](https://angel.co/u/aleazar-yilma-1)


## 👤 Neeraj Bhardwaj

- GitHub: [@Neeraj-Bhardwaj](https://github.com/rebel216)
- Twitter: [@Neeraj-Bhardwaj](https://twitter.com/rebel216)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/neerajbhardwaj216/)


<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FUTURE FEATURES -->

## 🔭 Future Features <a name="future-features"></a>

- **Add authorization feature to have an admin role**
- **Logic to not allow reservations of vehicles on dates already reserved**
- **Add logic to permit UPDATE of vehicles and reservations**

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- CONTRIBUTING -->
## 🤝 Contributing <a name="contributing"></a>

Contributions are what makes the open-source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue, feel free to check the [issues page](../../issues/).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>

If you like this project. Don't forget to give it a ⭐️


<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->

## 🙏 Acknowledgments <a name="acknowledgements"></a>

- This webpage is based on an original  [design](https://www.behance.net/gallery/26425031/Vespa-Responsive-Redesign) provided by [Murat Korkmaz](https://www.behance.net/muratk) on Behance.
  https://www.behance.net/gallery/26425031/Vespa-Responsive-Redesign

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.


<p align="right">(<a href="#readme-top">back to top</a>)</p>
