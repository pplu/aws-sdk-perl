
package Paws::CodePipeline::ListWebhooksOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Webhooks => (is => 'ro', isa => 'ArrayRef[Paws::CodePipeline::ListWebhookItem]', traits => ['NameInRequest'], request_name => 'webhooks' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::ListWebhooksOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

If the amount of returned information is significantly large, an
identifier is also returned and can be used in a subsequent
ListWebhooks call to return the next set of webhooks in the list.


=head2 Webhooks => ArrayRef[L<Paws::CodePipeline::ListWebhookItem>]

The JSON detail returned for each webhook in the list output for the
ListWebhooks call.


=head2 _request_id => Str


=cut

1;