
package Paws::DeviceFarm::StopJobResult;
  use Moose;
  has Job => (is => 'ro', isa => 'Paws::DeviceFarm::Job', traits => ['NameInRequest'], request_name => 'job' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::StopJobResult

=head1 ATTRIBUTES


=head2 Job => L<Paws::DeviceFarm::Job>

The job that was stopped.


=head2 _request_id => Str


=cut

1;