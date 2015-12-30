
package Paws::DeviceFarm::ScheduleRunResult;
  use Moose;
  has Run => (is => 'ro', isa => 'Paws::DeviceFarm::Run', traits => ['Unwrapped'], xmlname => 'run' );


### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::ScheduleRunResult

=head1 ATTRIBUTES


=head2 Run => L<Paws::DeviceFarm::Run>

Information about the scheduled run.




=cut

1;