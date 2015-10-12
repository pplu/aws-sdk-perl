
package Paws::DeviceFarm::ScheduleRunResult;
  use Moose;
  has run => (is => 'ro', isa => 'Paws::DeviceFarm::Run');


### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::ScheduleRunResult

=head1 ATTRIBUTES

=head2 run => L<Paws::DeviceFarm::Run>

  Information about the scheduled run.


=cut

1;