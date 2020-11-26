run () {
  #
  # write
  #

  echo '> node write-16kb-blocks.js'
  node write-16kb-blocks.js
  echo


  echo '> node write-64kb-blocks-static.js'
  node write-64kb-blocks-static.js
  echo
  echo '> node write-64kb-blocks.js'
  node write-64kb-blocks.js
  echo


  # 2Mb
  echo '> node write-2Mb-blocks.js'
  node write-2Mb-blocks.js
  echo


  #
  # copy
  #

  echo '> node copy-64kb-blocks.js'
  node copy-64kb-blocks.js
  echo

  # 2Mb
  echo '> node copy-2Mb-blocks.js'
  node copy-2Mb-blocks.js
  echo



  #
  # read
  #

  echo '> node read-16kb-blocks-proof.js'
  node read-16kb-blocks-proof.js
  echo
  echo '> node read-16kb-blocks.js'
  node read-16kb-blocks.js
  echo
  echo '> node read-64kb-blocks-linear.js'
  node read-64kb-blocks-linear.js
  echo
  echo '> node read-64kb-blocks-linear-batch.js'
  node read-64kb-blocks-linear-batch.js
  echo
  echo '> node read-64kb-blocks-proof.js'
  node read-64kb-blocks-proof.js
  echo
  echo '> node read-64kb-blocks.js'
  node read-64kb-blocks.js
  echo


  # 2Mb
  echo '> node read-2Mb-blocks.js'
  node read-2Mb-blocks.js
  echo

  echo '> node read-2Mb-blocks-proof.js'
  node read-2Mb-blocks-proof.js
  echo

  echo '> node read-2Mb-blocks-linear.js'
  node read-2Mb-blocks-linear.js
  echo

  echo '> node read-2Mb-blocks-linear-batch.js'
  node read-2Mb-blocks-linear-batch.js
  echo



  #
  # replicate
  #

  echo '> node replicate-16kb-blocks.js'
  node replicate-16kb-blocks.js
  echo
  echo '> node replicate-64kb-blocks.js'
  node replicate-64kb-blocks.js
  echo


  # 2Mb
  echo '> node replicate-2Mb-blocks.js'
  node replicate-2Mb-blocks.js
  echo
}

clear_cache () {
  echo '> rm -rf cores'
  rm -rf cores
  echo
}

echo "> git checkout $(git log --pretty=format:'%h' -n 1)"
echo

echo '# clearing cache'
echo
clear_cache
echo
echo

echo '# running all benchmarks #1'
echo
run
clear_cache
echo
echo


echo '# running all benchmarks #2'
echo
run
clear_cache
echo
echo


echo '# re-running all benchmarks #3'
echo
run
clear_cache
echo
echo


echo '# re-running all benchmarks #4'
echo
run
clear_cache
echo
echo
