
package Paws::XRay::GetSamplingRulesResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has SamplingRuleRecords => (is => 'ro', isa => 'ArrayRef[Paws::XRay::SamplingRuleRecord]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::XRay::GetSamplingRulesResult

=head1 ATTRIBUTES


=head2 NextToken => Str

Pagination token. Not used.


=head2 SamplingRuleRecords => ArrayRef[L<Paws::XRay::SamplingRuleRecord>]

Rule definitions and metadata.


=head2 _request_id => Str


=cut

