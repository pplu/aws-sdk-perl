
package Paws::AppIntegrations::ListEventIntegrationsResponse;
  use Moose;
  has EventIntegrations => (is => 'ro', isa => 'ArrayRef[Paws::AppIntegrations::EventIntegration]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppIntegrations::ListEventIntegrationsResponse

=head1 ATTRIBUTES


=head2 EventIntegrations => ArrayRef[L<Paws::AppIntegrations::EventIntegration>]

The event integrations.


=head2 NextToken => Str

If there are additional results, this is the token for the next set of
results.


=head2 _request_id => Str


=cut

