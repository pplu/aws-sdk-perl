
package Paws::CodeBuild::CreateWebhookOutput;
  use Moose;
  has Webhook => (is => 'ro', isa => 'Paws::CodeBuild::Webhook', traits => ['NameInRequest'], request_name => 'webhook' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::CreateWebhookOutput

=head1 ATTRIBUTES


=head2 Webhook => L<Paws::CodeBuild::Webhook>

Information about a webhook that connects repository events to a build
project in AWS CodeBuild.


=head2 _request_id => Str


=cut

1;