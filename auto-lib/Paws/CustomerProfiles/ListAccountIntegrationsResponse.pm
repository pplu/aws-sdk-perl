
package Paws::CustomerProfiles::ListAccountIntegrationsResponse;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::CustomerProfiles::ListIntegrationItem]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::ListAccountIntegrationsResponse

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::CustomerProfiles::ListIntegrationItem>]

The list of ListAccountIntegration instances.


=head2 NextToken => Str

The pagination token from the previous ListAccountIntegrations API
call.


=head2 _request_id => Str


=cut

