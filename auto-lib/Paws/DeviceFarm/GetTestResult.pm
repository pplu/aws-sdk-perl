
package Paws::DeviceFarm::GetTestResult;
  use Moose;
  has Test => (is => 'ro', isa => 'Paws::DeviceFarm::Test', traits => ['Unwrapped'], xmlname => 'test' );


### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::GetTestResult

=head1 ATTRIBUTES

=head2 Test => L<Paws::DeviceFarm::Test>

  


=cut

1;