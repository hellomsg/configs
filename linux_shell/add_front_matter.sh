!#/bin/bash
/* insert front_matter according to git commit log */
dir_list=./*.md
for i in $dir_list; do
    title=$(head -1 "$i")
    git_gmt=$(git log -1 --date=iso --pretty=%ad "$i")
    gmt_created=${git_gmt:0:19}
    front_matter="title: \"$title\"\ndate: \"$gmt_created\"\ncategories:\n- English\ntags:\n- English\n---\n"
    sed -i "1 i $front_matter" $i
done
