
package Paws::AppIntegrations::ListEventIntegrationAssociationsResponse;
  use Moose;
  has EventIntegrationAssociations => (is => 'ro', isa => 'ArrayRef[Paws::AppIntegrations::EventIntegrationAssociation]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppIntegrations::ListEventIntegrationAssociationsResponse

=head1 ATTRIBUTES


=head2 EventIntegrationAssociations => ArrayRef[L<Paws::AppIntegrations::EventIntegrationAssociation>]

The event integration associations.


=head2 NextToken => Str

If there are additional results, this is the token for the next set of
results.


=head2 _request_id => Str


=cut

