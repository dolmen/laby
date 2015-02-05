# This is a fake module that injects functions into the main program
package main;

use strict;
use warnings;

sub _output ($) {
     print "$_[0]\n";
     $|++;
}

sub _input () {
    my $line = <STDIN>;
    if ($line eq "quit\n")
    { exit(0);}
    return $line;
}

sub laby_name_left () {
  _output "left";
  _input;
}

sub laby_name_right () {
  _output "right";
  _input;
}

sub laby_name_forward () {
  _output "forward";
  _input;
}

sub laby_name_take () {
  _output "take";
  _input;
}

sub laby_name_drop () {
  _output "drop";
  _input;
}

sub laby_name_escape () {
    _output "escape";
    _input;
}

sub laby_name_say ($) {
    _output "say $_[0]";
    _input;
}


use constant {
    laby_name_Void     => 0,
    laby_name_Wall     => 1,
    laby_name_Rock     => 2,
    laby_name_Web      => 3,
    laby_name_Exit     => 4,
    laby_name_Unknown  => 5,
};

sub laby_name_look () {
  _output "look";
  my $ans = _input();
  if ($ans eq "void\n"){ return laby_name_Void;}
  if ($ans eq "wall\n"){ return laby_name_Wall;}
  if ($ans eq "rock\n"){ return laby_name_Rock;}
  if ($ans eq "web\n"){ return laby_name_Web;}
  if ($ans eq "exit\n"){ return laby_name_Exit;}
  return laby_name_Unknown;
}

_output "start";
_input;

1
