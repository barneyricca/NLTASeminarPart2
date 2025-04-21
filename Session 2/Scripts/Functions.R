assign_cluster <- function(df, 
                           centers_df) {
  vector(mode = "numeric",
         length = nrow(df)) ->
    clusters
  
  for(index in 1:nrow(df)) {
    c(
      sqrt((df[index,1] - centers_df$x[1]) ^ 2 +
             (df[index,2] - centers_df$y[1]) ^ 2),
      sqrt((df[index,1] - centers_df$x[2]) ^ 2 +
             (df[index,2] - centers_df$y[2]) ^ 2),
      sqrt((df[index,1] - centers_df$x[3]) ^ 2 +
             (df[index,2] - centers_df$y[3]) ^ 2)) ->
      centers
    min(which(centers == min(centers))) ->
      clusters[index]
  }
  
  return(clusters) 
}

