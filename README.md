# 🚀 counter app


<font color="purple">A simple java counter app 🚜 for CI/CD.!</font>

![image](https://user-images.githubusercontent.com/96833570/225414859-13e098fa-026e-4681-ad84-51303fbc2198.png)


## Run Locally

Clone the project

```bash
  $ git clone https://github.com/colossus06/springboot-app-counter.git
```

Go to the project directory

```bash
  $ cd springboot-app-counter
```

Install dependencies

```bash
  $ mvn clean install
```

Build the docker image

```bash
  $ docker build -t counter-app .
```


Run the docker container

```bash
  $ docker run -dit -p 8089:9008 counter-app
```