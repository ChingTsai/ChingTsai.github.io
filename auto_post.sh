printf "Title : "
read title
printf "Tags : "
read tags

#Remove punctuations
parse=`echo $title | sed -e "s/[[:punct:]]//g"`
#Replace space with -
parse=`echo $parse | sed -e "s/ /-/g"`

create_date=`date +"%Y-%m-%d"`
create_date_time=`date +"%Y-%m-%d %H:%M:%S"`
md_name="_posts/$create_date-$parse.md"

echo "---" > $md_name
echo "layout : post" >> $md_name
echo "cover: false" >> $md_name
echo "title: '$title'" >> $md_name
echo "date: '$create_date_time'" >> $md_name
echo "tags: $tags" >> $md_name
echo "subclass: 'post tag-$tags'" >> $md_name
echo "categories: 'CT'" >> $md_name
echo "cover: 'assets/images/cover2.jpg'" >> $md_name
echo "navigation: True " >> $md_name
echo "logo: 'assets/images/ghost.png'" >> $md_name
echo "disqus: true" >> $md_name
echo "---" >> $md_name
