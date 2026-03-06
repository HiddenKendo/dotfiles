if [ ! -e current_index_file ]; then
  echo "0" >current_index_file
fi

amount_images=$(ls images -l | grep -E ".png|jpg" | wc -l)
current_index=$(cat current_index_file)

next_index=$(((current_index + 1) % amount_images))
echo $next_index >current_index_file

next_img_fn=$(ls images | grep -E -o "Image$next_index.*")

awww img images/$next_img_fn --resize crop --transition-type any --transition-step 255 --transition-duration 1.0 --transition-fps 60 --transition-bezier 0,0.5,0.4,1
