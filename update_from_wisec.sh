for tex_file in introduction.tex background.tex related_work.tex mitm_implementation.tex solutions.tex future_work.tex conclusion.tex
do
    echo $tex_file
    cp -f ../wisec-2014/$tex_file $tex_file
    sed -i '' 's/^\\section/\\chapter/' $tex_file
    sed -i '' 's/^\\subsection/\\section/' $tex_file
done

cp ../wisec-2014/reference.bib .
