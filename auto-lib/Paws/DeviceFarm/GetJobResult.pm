
package Paws::DeviceFarm::GetJobResult;
  use Moose;
  has Job => (is => 'ro', isa => 'Paws::DeviceFarm::Job', traits => ['Unwrapped'], xmlname => 'job' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::GetJobResult

=head1 ATTRIBUTES


=head2 Job => L<Paws::DeviceFarm::Job>




=head2 _request_id => Str


=cut

1;