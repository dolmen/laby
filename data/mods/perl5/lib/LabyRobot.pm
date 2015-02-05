# This is a fake module that injects functions into the main program
package main;

use strict;
use warnings;


sub _action ($) {
    print "$_[0]\n";
    my $line = <STDIN>;
    if ($line eq "quit\n")
    { exit(0);}
    return $line;
}

sub laby_name_left () {
    _action "left"
}

sub laby_name_right () {
    _action "right"
}

sub laby_name_forward () {
    _action "forward"
}

sub laby_name_take () {
    _action "take"
}

sub laby_name_drop () {
    _action "drop"
}

sub laby_name_escape () {
    _action "escape"
}

sub laby_name_say ($) {
    _action "say $_[0]"
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
  my $ans = _action "look";
  if ($ans eq "void\n"){ return laby_name_Void;}
  if ($ans eq "wall\n"){ return laby_name_Wall;}
  if ($ans eq "rock\n"){ return laby_name_Rock;}
  if ($ans eq "web\n"){ return laby_name_Web;}
  if ($ans eq "exit\n"){ return laby_name_Exit;}
  return laby_name_Unknown;
}

# Set autoflush
$|++;

_action "start";

1
