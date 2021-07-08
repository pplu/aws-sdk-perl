
package Paws::Connect::ListIntegrationAssociationsResponse;
  use Moose;
  has IntegrationAssociationSummaryList => (is => 'ro', isa => 'ArrayRef[Paws::Connect::IntegrationAssociationSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::ListIntegrationAssociationsResponse

=head1 ATTRIBUTES


=head2 IntegrationAssociationSummaryList => ArrayRef[L<Paws::Connect::IntegrationAssociationSummary>]

The AppIntegration associations.


=head2 NextToken => Str

If there are additional results, this is the token for the next set of
results.


=head2 _request_id => Str


=cut

