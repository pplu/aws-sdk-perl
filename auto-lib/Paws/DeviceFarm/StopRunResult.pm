
package Paws::DeviceFarm::StopRunResult;
  use Moose;
  has Run => (is => 'ro', isa => 'Paws::DeviceFarm::Run', traits => ['Unwrapped'], xmlname => 'run' );


### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::StopRunResult

=head1 ATTRIBUTES


=head2 Run => L<Paws::DeviceFarm::Run>






=cut

1;