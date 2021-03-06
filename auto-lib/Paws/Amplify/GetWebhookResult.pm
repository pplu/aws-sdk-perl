
package Paws::Amplify::GetWebhookResult;
  use Moose;
  has Webhook => (is => 'ro', isa => 'Paws::Amplify::Webhook', traits => ['NameInRequest'], request_name => 'webhook', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Amplify::GetWebhookResult

=head1 ATTRIBUTES


=head2 B<REQUIRED> Webhook => L<Paws::Amplify::Webhook>

Describes the structure of a webhook.


=head2 _request_id => Str


=cut

