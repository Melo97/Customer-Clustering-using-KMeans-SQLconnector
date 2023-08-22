# Customer Clustering with KMeans & SQLconnector
  
  Project status: Finished.

# Project objective

The main goal here is to use KMeans clustering to define the customer importance, based on two main variables: the total *monetary spent (BRL)*, and *frequency of purchase by customer*. 

This is and End-to-End Machine Learning Project for Customer Clusterization, from  **Database creation** to Development of **ML algorithm** and **bussiness analysis** of results.

Take a look into the data **Schema** used to build our DataFrame: 

<figure>
    <img src="https://i.imgur.com/HRhd2Y0.png" width="800" height="2000">
    <figcaption>: <center> Source: Kaggle  </center> </figcaption>
</figure>


# Technologies 
  
  **List of technologies**:
  <div style="display: inline_block"><br>
  <img align="center" height="30" width="40" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/jupyter/jupyter-original.svg">
  <img align="center" alt="Daniel-sql" height="30" width="40" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/mysql/mysql-original.svg">
  <img align="center" alt="Daniel-psgre" height="30" width="40" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/postgresql/postgresql-original.svg">
  <img align="center" height="30" width="40" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/python/python-original.svg">
  <img align="center" height="30" width="40" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/pandas/pandas-original.svg">
  <img align="center" height="30" width="40" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/git/git-original-wordmark.svg"> 
    
</div>

  - **Machine Learning**: scikit-learn

# Steps

To summarize, the model was developed with the following steps:

1. **Database creation** (DDL) on mySQL ID;
 1.1. **data convertion** from CSV to SQL format; 
 1.2. building **Relationships** between tables;
2. **my SQL integration** with python (`mysql-connector`)
 2.1. writting of **CRUD** queries inside jupyter notebook and convertion to pandas DataFrame;
3. Development of **ML algorithm** and **bussiness analysis** of results;
 
# Methods

To classify customers, based on income generated and frequency of purchases, it was used an **Unsupervised Machine Learning** method: **KMeans Clustering**.

**K-means clustering** is a method of vector quantization, that aims to partition **n** observations into **k** clusters in which each observation belongs to the cluster with the nearest mean (cluster centers or cluster centroid), serving as a prototype of the cluster.

K-means clustering minimizes within-cluster variances (squared Euclidean distances), but not regular Euclidean distances, which would be the more difficult Weber problem: the mean optimizes squared errors, whereas only the geometric median minimizes Euclidean distances.

# Conclusion

It is clear that beyond k = 5, the Sum Squared Distance starts to take a more plain decrease. Therefore, the optimal number of client clusters is 5. In other words, that means this company has 5 levels of customers to consider different marketing approaches. Lastly, the python connector was used to write a query to **update** the database.
  
# Contact
<div> 
  <a href="https://www.linkedin.com/in/daniel-iglesias-melo/" target="_blank"><img src="https://img.shields.io/badge/-LinkedIn-%230077B5?style=for-the-badge&logo=linkedin&logoColor=white" target="_blank"></a> 
 	<a href="https://wa.me/5581989017459" target="_blank"><img src="https://img.shields.io/badge/WhatsApp-25D366?style=for-the-badge&logo=whatsapp&logoColor=white" target="_blank"></a>
 <a href= https://discordapp.com/channels/@me/1119691506735906826/" target="_blank"><img src="https://img.shields.io/badge/Discord-7289DA?style=for-the-badge&logo=discord&logoColor=white" target="_blank"></a> 
  <a href = "mailto:daniel.iglesiascm@gmail.com"><img src="https://img.shields.io/badge/-Gmail-%23333?style=for-the-badge&logo=gmail&logoColor=red" target="_blank"></a>
  
</div>
