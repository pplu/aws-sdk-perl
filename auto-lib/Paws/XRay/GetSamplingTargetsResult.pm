
package Paws::XRay::GetSamplingTargetsResult;
  use Moose;
  has LastRuleModification => (is => 'ro', isa => 'Str');
  has SamplingTargetDocuments => (is => 'ro', isa => 'ArrayRef[Paws::XRay::SamplingTargetDocument]');
  has UnprocessedStatistics => (is => 'ro', isa => 'ArrayRef[Paws::XRay::UnprocessedStatistics]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::XRay::GetSamplingTargetsResult

=head1 ATTRIBUTES


=head2 LastRuleModification => Str

The last time a user changed the sampling rule configuration. If the
sampling rule configuration changed since the service last retrieved
it, the service should call GetSamplingRules to get the latest version.


=head2 SamplingTargetDocuments => ArrayRef[L<Paws::XRay::SamplingTargetDocument>]

Updated rules that the service should use to sample requests.


=head2 UnprocessedStatistics => ArrayRef[L<Paws::XRay::UnprocessedStatistics>]

Information about SamplingStatisticsDocument that X-Ray could not
process.


=head2 _request_id => Str


=cut

