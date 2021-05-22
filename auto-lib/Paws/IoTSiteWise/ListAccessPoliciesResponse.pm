
package Paws::IoTSiteWise::ListAccessPoliciesResponse;
  use Moose;
  has AccessPolicySummaries => (is => 'ro', isa => 'ArrayRef[Paws::IoTSiteWise::AccessPolicySummary]', traits => ['NameInRequest'], request_name => 'accessPolicySummaries', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::ListAccessPoliciesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccessPolicySummaries => ArrayRef[L<Paws::IoTSiteWise::AccessPolicySummary>]

A list that summarizes each access policy.


=head2 NextToken => Str

The token for the next set of results, or null if there are no
additional results.


=head2 _request_id => Str


=cut

