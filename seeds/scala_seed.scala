#!/usr/bin/env scala

object ScalaSeed {
  val usage = "Usage: scala_seed.scala [options]\n -h \tDisplay help\n -t \tProvide a type of seed"

  def main(args: Array[String]) {
    if (args.length == 0) { 
      println(usage + "\nDefault output: You planted a tomato seed!")
    }
    else {
      args(0) match {
        case "-h" => println(usage)
        case "-t" => printSeedTypeMessage(args)
      }
    }
  }

  def printSeedTypeMessage(args: Array[String]) {
    if (args.length > 1) {
      println("You planted a " + args.takeRight(args.length - 1).mkString(" ") + " seed!")
    }
    else {
      println("You must provide a type of seed after the -t argument!")
      println(usage)
    }
  }
}