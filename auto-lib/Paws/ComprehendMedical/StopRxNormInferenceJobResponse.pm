
package Paws::ComprehendMedical::StopRxNormInferenceJobResponse;
  use Moose;
  has JobId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ComprehendMedical::StopRxNormInferenceJobResponse

=head1 ATTRIBUTES


=head2 JobId => Str

The identifier generated for the job. To get the status of job, use
this identifier with the C<DescribeRxNormInferenceJob> operation.


=head2 _request_id => Str


=cut

1;