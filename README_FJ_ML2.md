## Machine Learning 

### Performing RandomForest Sampling on our merged DataFrame

We initially performed a RandomForestSampling on our data using below variables:

['h', 'e', 'a', 'q', 'i', 'om', 'w', 'ma', 'ad', 'n', 'per', 'per_y', 'moid', 'moid_ld', 'moid_jup', 't_jup', 'sigma_e', 'sigma_a', 'sigma_q', 'sigma_i', 'sigma_om', 'sigma_w', 'sigma_ma', 'sigma_ad', 'sigma_n', 'sigma_tp', 'sigma_per', 'data_arc', 'condition_code', 'rms', 'dist', 'dist_min', 'dist_max', 'v_rel', 'v_inf', 'h_cad', 'class_AMO', 'class_APO', 'class_ATE', 'class_ETc', 'class_HTC', 'class_IEO', 'class_JFC', 'class_JFc']
For more information about these variables please refer to the Glossary link below:

Our RandomForest Sampling revealed satisfactory results. Please see below snippet of confusion matrix for our RandomForest Sampling:
![image](https://user-images.githubusercontent.com/86033316/150716443-27608e59-62fb-429c-b83d-eb0fb58599a3.png)

As indicated in the confusion matrix, after running 5624 predictions on our data, there was a total of (4) false predictions on NEOs that were potentially hazardous but our model prediction was a non-hazardous object.
To improve the accuracy of our model, we sorted the features by their performance by calculating the feature importance by RandomForestSampling model. See below snippet :
![image](https://user-images.githubusercontent.com/86033316/150715204-f1ab0561-dfea-47a3-9253-dc13ad05dd45.png)
