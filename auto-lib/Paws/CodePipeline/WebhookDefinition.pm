package Paws::CodePipeline::WebhookDefinition;
  use Moose;
  has Authentication => (is => 'ro', isa => 'Str', request_name => 'authentication', traits => ['NameInRequest'], required => 1);
  has AuthenticationConfiguration => (is => 'ro', isa => 'Paws::CodePipeline::WebhookAuthConfiguration', request_name => 'authenticationConfiguration', traits => ['NameInRequest'], required => 1);
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::CodePipeline::WebhookFilterRule]', request_name => 'filters', traits => ['NameInRequest'], required => 1);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest'], required => 1);
  has TargetAction => (is => 'ro', isa => 'Str', request_name => 'targetAction', traits => ['NameInRequest'], required => 1);
  has TargetPipeline => (is => 'ro', isa => 'Str', request_name => 'targetPipeline', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::WebhookDefinition

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodePipeline::WebhookDefinition object:

  $service_obj->Method(Att1 => { Authentication => $value, ..., TargetPipeline => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodePipeline::WebhookDefinition object:

  $result = $service_obj->Method(...);
  $result->Att1->Authentication

=head1 DESCRIPTION

Represents information about a webhook and its definition.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Authentication => Str

  Supported options are GITHUB_HMAC, IP and UNAUTHENTICATED.

=over

=item *

GITHUB_HMAC implements the authentication scheme described here:
https://developer.github.com/webhooks/securing/

=item *

IP will reject webhooks trigger requests unless they originate from an
IP within the IP range whitelisted in the authentication configuration.

=item *

UNAUTHENTICATED will accept all webhook trigger requests regardless of
origin.

=back



=head2 B<REQUIRED> AuthenticationConfiguration => L<Paws::CodePipeline::WebhookAuthConfiguration>

  Properties that configure the authentication applied to incoming
webhook trigger requests. The required properties depend on the
authentication type. For GITHUB_HMAC, only the SecretToken property
must be set. For IP, only the AllowedIPRange property must be set to a
valid CIDR range. For UNAUTHENTICATED, no properties can be set.


=head2 B<REQUIRED> Filters => ArrayRef[L<Paws::CodePipeline::WebhookFilterRule>]

  A list of rules applied to the body/payload sent in the POST request to
a webhook URL. All defined rules must pass for the request to be
accepted and the pipeline started.


=head2 B<REQUIRED> Name => Str

  The name of the webhook.


=head2 B<REQUIRED> TargetAction => Str

  The name of the action in a pipeline you want to connect to the
webhook. The action must be from the source (first) stage of the
pipeline.


=head2 B<REQUIRED> TargetPipeline => Str

  The name of the pipeline you want to connect to the webhook.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

