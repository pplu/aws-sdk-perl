package Paws::IoT::ThingAttribute;
  use Moose;
  has attributes => (is => 'ro', isa => 'Paws::IoT::Attributes');
  has thingName => (is => 'ro', isa => 'Str');
1;
