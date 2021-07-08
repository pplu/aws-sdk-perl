
package Paws::ComprehendMedical::ListRxNormInferenceJobsResponse;
  use Moose;
  has ComprehendMedicalAsyncJobPropertiesList => (is => 'ro', isa => 'ArrayRef[Paws::ComprehendMedical::ComprehendMedicalAsyncJobProperties]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ComprehendMedical::ListRxNormInferenceJobsResponse

=head1 ATTRIBUTES


=head2 ComprehendMedicalAsyncJobPropertiesList => ArrayRef[L<Paws::ComprehendMedical::ComprehendMedicalAsyncJobProperties>]

The maximum number of results to return in each page. The default is
100.


=head2 NextToken => Str

Identifies the next page of results to return.


=head2 _request_id => Str


=cut

1;