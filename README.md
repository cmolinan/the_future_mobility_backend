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

# 📖 The Future Mobility BackEnd. <a name="about-project"></a>

> Describe your project in 1 or 2 sentences.

**[your_project__name]** is a...

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

> Describe the tech stack and include only the relevant sections that apply to your project.

<details>
  <summary>Client</summary>
  <ul>
    <li><a href="https://reactjs.org/">React.js</a></li>
  </ul>
</details>

<details>
  <summary>Server</summary>
  <ul>
    <li><a href="https://expressjs.com/">Express.js</a></li>
  </ul>
</details>

<details>
<summary>Database</summary>
  <ul>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>
</details>

<!-- Features -->

### Key Features <a name="key-features"></a>

> Describe between 1-3 key features of the application.

- **[key_feature_1]**
- **[key_feature_2]**
- **[key_feature_3]**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LIVE DEMO -->

## 🚀 Live Demo <a name="live-demo"></a>

> Add a link to your deployed project.

- [Live Demo Link](https://yourdeployedapplicationlink.com)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>

> Describe how a new developer could make use of your project.

To get a local copy up and running, follow these steps.

### Prerequisites

In order to run this project you need:

<!--
Example command:

```sh
 gem install rails
```
 -->

### Setup

Clone this repository to your desired folder:

<!--
Example commands:

```sh
  cd my-folder
  git clone git@github.com:myaccount/my-project.git
```
--->

### Install

Install this project with:

<!--
Example command:

```sh
  cd my-project
  gem install
```
--->

### How to use this API:



## BASEURL's:

<a href="#">http://localhost:3001</a>

<a href="#">https://future-mobility-backend.onrender.com</a>

---

## SIGN-UP

<label>POST</label>
<a href="#">/api/v1/users/signup</a>

<strong>Body example:</strong>

```
{
    "email":"tom@m.com",
    "password":"123456",
    "name":"TomSawyer"
}
```

<strong>Response example:</strong>

```
{
    "token": "eyJhbGciOiJIUzI1NiJ9eyJ1c2VyX2lkIjo2LCJleHAiOjE2NzMxNTI3ODF9Ldu_RWd5OImcFdZoQJP9DqUarJiiLr5dBiBVA0lQ7Yo",
    "exp": "01-07-202323:39",
    "name": "TomSawyer"
    "id": "1"
}
```
---
## LOGIN

<label>POST</label>
<a href="#">/api/v1/users/login</a>

<strong>Body example:</strong>

```
{
    "email":"tom@m.com",
    "password":"666666"
}
```

<strong>Response example:</strong>

```
{

    "token":
    "eyJhbGciOiJIUzI1NiJ9eyJ1c2VyX2lkIjo3LCJleHAiOjE2NzMxNTM1ODN9B7d0qjibkysaCzdxceb8dei0sqYdY5OTfZ2PEmN-oYY",
    "exp":"01-07-202323:53",
    "name":"TomSawyer",
}
```
---
## LIST USERS

<label>GET</label>
<a href="#">/api/v1/users</a>

<em>Send Token inside Auth-Bearer, without any wraps. Example:</em>

```
eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE2NzMxNTU3Njh9CU8H1c3IbQ7pVB_FdhP9oWiy6oi84K12Ze-GAvBoP9k
```

<strong>Body example:</strong>

```
{
    "email":"tom@m.com",
    "password":"666666"
}
```

<strong>Response example:</strong>

```
[
    {
        "id":1,
        "name":"TomHanks",
        "created_at":"2023-01-07T05:46:47.680Z",
        "updated_at":"2023-01-07T05:46:47.680Z",
        "email":"tom@m.com"
    },
    {
        "id":2,
        "name":"MarkHamilton",
        "created_at":"2023-01-07T05:46:47.994Z",
        "updated_at":"2023-01-07T05:46:47.994Z",
        "email":"mark@m.com"
    }
]
```
---
## LIST VEHICLES

<label>GET</label>
<a href="#">/api/v1/vehicles</a>

<strong>Body example:</strong>
<em>Without any token!</em>

```
{
    "email":"tom@m.com",
    "password":"666666"
}
```

<strong>Response example:</strong>

```
[
    {
        "id":1,
        "name":"TeslaModelS",
        "image":"https://tesla-cdn.thron.com/delivery/public/image/tesla",
        "details1":null,
        "details2":null,
        "created_at":"2023-01-07T05:46:48.019Z",
        "updated_at":"2023-01-07T05:46:48.019Z"
    },
    {
        "id":2,
        "name":"TeslaModel3",
        "image":"https://tesla-cdn.thron.com/delivery/public/image/tesla/",
        "details1":null,
        "details2":null,
        "created_at":"2023-01-07T05:46:48.030Z",
        "updated_at":"2023-01-07T05:46:48.030Z"
    }
]
```
---

## SHOWAVEHICLEDETAIL

<label>GET</label><a href="#"> /api/v1/vehicles/2</a>

<em>Without any token!</em>

<strong>Response example:</strong>

```
{
    "id":2,
    "name":"TeslaModel3",
    "image":
    "https://tesla-cdn.thron.com/delivery/public/image/tesla",
    "details1":null,
    "details2":null,
    "created_at":"2023-01-07T05:46:48.030Z",
    "updated_at":"2023-01-07T05:46:48.030Z"
}
```
---

## CREATEVEHICLE

<label>POST</label><a href="#">/api/v1/vehicles</a>

<strong>
Send Token inside Auth-Bearer, without any wraps. Example:</strong>

```
eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE2NzMxNTU3Njh9.CU8H1c3IbQ7pVB_FdhP9oWiy6oi84K12Ze-GAvBoP9k
```

<strong>Body example:</strong>

```
{
    "vehicle":{
                "name":"ToyotaPriusPrime",
                "image":"imagelink",
                "details1":"Technicalinfopart1",
                "details2":"Technicalinfopart2"
            }
}
```

_Response example:_

```
{
    "id":6,
    "name":"ToyotaPriusPrime",
    "image":"imagelink",
    "details1":"Technicalinfopart1",
    "details2":"Technicalinfopart2",
    "created_at":"2023-01-07T21:53:40.853Z",
    "updated_at":"2023-01-07T21:53:40.853Z"
}
```
---

## DELETE VEHICLE

<label>DELETE</label>
<a href="#">/api/v1/vehicles/6</a>

**Send Token inside Auth-Bearer, without any wraps. Example:**

```
eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE2NzMxNTU3Njh9.CU8H1c3IbQ7pVB_FdhP9oWiy6oi84K12Ze-GAvBoP9k
```

**Response:**
`Vehicle deleted successfully`

---

## LIST RESERVATIONS OF A USER

<label>GET</label> <a>/api/v1/users/1/reservations</a>

**Send Token inside Auth-Bearer, without any wraps. Example:**

```
eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE2NzMxNTU3Njh9.CU8H1c3IbQ7pVB_FdhP9oWiy6oi84K12Ze-GAvBoP9k
```

**_Response example:_**

```
[
    {
        "id":1,
        "reserve_date":"2023-01-21T11:00:00.000Z",
        "address":"NewYork,USA",
        "created_at":"2023-01-07T05:46:48.113Z",
        "updated_at":"2023-01-07T05:46:48.113Z",
        "user_id":1,
        "vehicle_id":1
    }
]
```
---
## SHOW A DETAIL RESERVATION

<label>GET</label>
<a href="#">/api/v1/users/1/reservations/3</a>

**Send Token inside Auth-Bearer, without any wraps. Example:**

```
eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE2NzMxNTU3Njh9.CU8H1c3IbQ7pVB_FdhP9oWiy6oi84K12Ze-GAvBoP9k
```

**Response example:**

```
{
    "id":3,
    "reserve_date":"2023-01-14T10:45:00.000Z",
    "address":"Berlin,Germany",
    "created_at":"2023-01-07T05:46:48.155Z",
    "updated_at":"2023-01-07T05:46:48.155Z",
    "user_id":1,
    "vehicle_id":2
}
```
---
## CREATE RESERVATION

<label>POST</label>
<a href="#">/api/v1/users/1/reservations</a>

**Send Token inside Auth-Bearer, without any wraps. Example:**

```
eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE2NzMxNTU3Njh9.CU8H1c3IbQ7pVB_FdhP9oWiy6oi84K12Ze-GAvBoP9k
```

**Body example:**

```
{
    "reservation":{
                    "reserve_date":"2023-01-2111:00",
                    "address":"Tokyo,Japan",
                    "user_id":3,
                    "vehicle_id":3
                }
}
```

**Response example:**
```
{
    "id":5,
    "reserve_date":"2023-01-21T11:00:00.000Z",
    "address":"Tokyo,Japan",
    "created_at":"2023-01-07T22:03:51.867Z",
    "updated_at":"2023-01-07T22:03:51.867Z",
    "user_id":3,
    "vehicle_id":3
}
```
---

## DELETE RESERVATION
<label>DELETE</label> <a href="#">/api/v1/users/3/reservations/5</a>


**Send Token inside Auth-Bearer, withoutanywraps. Example:**
```
eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE2NzMxNTU3Njh9.CU8H1c3IbQ7pVB_FdhP9oWiy6oi84K12Ze-GAvBoP9k
```

*Response example:*

`
Reservation deleted successfully
`
### Run tests

To run tests, run the following command:

<!--
Example command:

```sh
  bin/rails test test/models/article_test.rb
```
--->

### Deployment

You can deploy this project using:

<!--
Example:

```sh

```
 -->

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- AUTHORS -->

## 👥 Authors <a name="authors"></a>

> Mention all of the collaborators of this project.

👤 **Author1**

- GitHub: [@githubhandle](https://github.com/githubhandle)
- Twitter: [@twitterhandle](https://twitter.com/twitterhandle)
- LinkedIn: [LinkedIn](https://linkedin.com/in/linkedinhandle)

👤 **Author2**

- GitHub: [@githubhandle](https://github.com/githubhandle)
- Twitter: [@twitterhandle](https://twitter.com/twitterhandle)
- LinkedIn: [LinkedIn](https://linkedin.com/in/linkedinhandle)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FUTURE FEATURES -->

## 🔭 Future Features <a name="future-features"></a>

> Describe 1 - 3 features you will add to the project.

- [ ] **[new_feature_1]**
- [ ] **[new_feature_2]**
- [ ] **[new_feature_3]**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>

> Write a message to encourage readers to support your project

If you like this project...

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->

## 🙏 Acknowledgments <a name="acknowledgements"></a>

> Give credit to everyone who inspired your codebase.

I would like to thank...

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FAQ (optional) -->

## ❓ FAQ (OPTIONAL) <a name="faq"></a>

> Add at least 2 questions new developers would ask when they decide to use your project.

- **[Question_1]**

  - [Answer_1]

- **[Question_2]**

  - [Answer_2]

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

_NOTE: we recommend using the [MIT license](https://choosealicense.com/licenses/mit/) - you can set it up quickly by [using templates available on GitHub](https://docs.github.com/en/communities/setting-up-your-project-for-healthy-contributions/adding-a-license-to-a-repository). You can also use [any other license](https://choosealicense.com/licenses/) if you wish._

<p align="right">(<a href="#readme-top">back to top</a>)</p>
