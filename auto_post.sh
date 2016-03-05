printf "Title : "
read title
printf "Tags : "
read tags

create_date=`date +"%Y-%m-%d"`
md_name="_posts/$create_date-$title.md"

echo "---" > $md_name
echo "layout : post" >> $md_name
echo "cover: false" >> $md_name
echo "title: $title" >> $md_name
echo "tags: $tags" >> $md_name
echo "subclass: 'post tag-$tags'" >> $md_name
echo "categories: 'CT'" >> $md_name
echo "cover: 'assets/images/cover2.jpg'" >> $md_name
echo "navigation: True " >> $md_name
echo "logo: 'assets/images/ghost.png'" >> $md_name
echo "---" >> $md_name
