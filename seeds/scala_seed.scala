#!/usr/bin/env scala

object ScalaSeed {
  val usage = "Usage: scala_seed.scala [options]\n -h \tDisplay help\n -t \tProvide a type of seed"

  def main(args: Array[String]) {
    if (args.length == 0) {
      printSeedTypeMessage("tomato")
    }
    else {
      args(0) match {
        case "-h" => println(usage)
        case "-t" => printSeedTypeMessage(args(1))
      }
    }
  }

  def printSeedTypeMessage(plant: String) {
    println("You planted a " + plant + " seed!")
  }

}
