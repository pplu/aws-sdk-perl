
package Paws::CodePipeline::PutWebhookOutput;
  use Moose;
  has Webhook => (is => 'ro', isa => 'Paws::CodePipeline::ListWebhookItem', traits => ['NameInRequest'], request_name => 'webhook' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::PutWebhookOutput

=head1 ATTRIBUTES


=head2 Webhook => L<Paws::CodePipeline::ListWebhookItem>

The detail returned from creating the webhook, such as the webhook
name, webhook URL, and webhook ARN.


=head2 _request_id => Str


=cut

1;