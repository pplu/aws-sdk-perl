
package Paws::DeviceFarm::GetRunResult;
  use Moose;
  has Run => (is => 'ro', isa => 'Paws::DeviceFarm::Run', traits => ['NameInRequest'], request_name => 'run' );


### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::GetRunResult

=head1 ATTRIBUTES


=head2 Run => L<Paws::DeviceFarm::Run>






=cut

1;