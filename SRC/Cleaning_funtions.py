def clean_old_hdd(data_old_HDD):
    actor_id = []
    film_id = []

    for i in range(len(data_old_HDD)):
    
        for j in range(len(data_actor)):
        
            if data_old_HDD.loc[i]['first_name'] == data_actor.loc[j]['first_name'] and data_old_HDD.loc[i]['last_name'] == data_actor.loc[j]['last_name']:
                actor_id.append(data_actor.loc[j]['actor_id'])
                break

        for k in range(len(data_film)):
            
            if data_old_HDD.loc[i]['title'] == data_film.loc[k]['title']:
                film_id.append(data_film.loc[j]['film_id'])
                break
    
    data_old_HDD['actor_id'] = actor_id
    data_old_HDD['title_id'] = title_id
    
    data_old_HDD = data_old_HDD.drop('first_name',axis=1)
    data_old_HDD = data_old_HDD.drop('last_name',axis=1)
    data_old_HDD = data_old_HDD.drop('title',axis=1)
    
    cols3 = ['actor_id', 'title_id' 'category_id','release_year']
    
    data_old_HDD = data_old_HDD[cols3]
    
    return data_old_HDD