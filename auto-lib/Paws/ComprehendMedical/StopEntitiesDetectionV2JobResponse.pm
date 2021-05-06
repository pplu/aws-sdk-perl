
package Paws::ComprehendMedical::StopEntitiesDetectionV2JobResponse;
  use Moose;
  has JobId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ComprehendMedical::StopEntitiesDetectionV2JobResponse

=head1 ATTRIBUTES


=head2 JobId => Str

The identifier of the medical entities detection job that was stopped.


=head2 _request_id => Str


=cut

1;