
package Paws::AppIntegrations::CreateEventIntegrationResponse;
  use Moose;
  has EventIntegrationArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppIntegrations::CreateEventIntegrationResponse

=head1 ATTRIBUTES


=head2 EventIntegrationArn => Str

The Amazon Resource Name (ARN) of the event integration.


=head2 _request_id => Str


=cut

