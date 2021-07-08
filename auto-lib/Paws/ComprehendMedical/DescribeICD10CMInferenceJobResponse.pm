
package Paws::ComprehendMedical::DescribeICD10CMInferenceJobResponse;
  use Moose;
  has ComprehendMedicalAsyncJobProperties => (is => 'ro', isa => 'Paws::ComprehendMedical::ComprehendMedicalAsyncJobProperties');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ComprehendMedical::DescribeICD10CMInferenceJobResponse

=head1 ATTRIBUTES


=head2 ComprehendMedicalAsyncJobProperties => L<Paws::ComprehendMedical::ComprehendMedicalAsyncJobProperties>

An object that contains the properties associated with a detection job.


=head2 _request_id => Str


=cut

1;