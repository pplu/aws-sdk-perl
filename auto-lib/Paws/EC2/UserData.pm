package Paws::EC2::UserData {
  use Moose;
  has Data => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'data');
}
1;
