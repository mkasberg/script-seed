#!/usr/bin/env scala

// This is a Scala script seed.
// Use it as a template for your own Scala script.

object ScalaSeed {
  val usage = """Prints a message as an example of parsing CLI args in Scala.
                |Usage: scala_seed.scala [options]
                |
                |Options:
                |  -h \tDisplay help.
                |  -n \tSpecify the user's name.""".stripMargin

  def main(args: Array[String]) = {
    if (args.length == 0) {
      printMessage("world")
    }
    else {
      args(0) match {
        case "-h" => println(usage)
        case "-n" => printMessage(args(1))
      }
    }
  }

  def printMessage(name: String) = {
    val message = s"""Hello $name!
                     |
                     |You ran the Scala seed script!""".stripMargin
    println(message)
  }
}
