
package Paws::DMS::DescribeApplicableIndividualAssessmentsResponse;
  use Moose;
  has IndividualAssessmentNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Marker => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DMS::DescribeApplicableIndividualAssessmentsResponse

=head1 ATTRIBUTES


=head2 IndividualAssessmentNames => ArrayRef[Str|Undef]

List of names for the individual assessments supported by the
premigration assessment run that you start based on the specified
request parameters. For more information on the available individual
assessments, including compatibility with different migration task
configurations, see Working with premigration assessment runs
(https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.AssessmentReport.html)
in the I<AWS Database Migration Service User Guide.>


=head2 Marker => Str

Pagination token returned for you to pass to a subsequent request. If
you pass this token as the C<Marker> value in a subsequent request, the
response includes only records beyond the marker, up to the value
specified in the request by C<MaxRecords>.


=head2 _request_id => Str


=cut

1;