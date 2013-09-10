new File("email.txt").eachLine {
  println "\n\n" + java.net.URLEncoder.encode(it)
}
