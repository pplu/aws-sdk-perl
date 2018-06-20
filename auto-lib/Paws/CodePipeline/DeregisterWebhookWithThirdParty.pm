
package Paws::CodePipeline::DeregisterWebhookWithThirdParty;
  use Moose;
  has WebhookName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'webhookName' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeregisterWebhookWithThirdParty');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodePipeline::DeregisterWebhookWithThirdPartyOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::DeregisterWebhookWithThirdParty - Arguments for method DeregisterWebhookWithThirdParty on L<Paws::CodePipeline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeregisterWebhookWithThirdParty on the
L<AWS CodePipeline|Paws::CodePipeline> service. Use the attributes of this class
as arguments to method DeregisterWebhookWithThirdParty.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeregisterWebhookWithThirdParty.

=head1 SYNOPSIS

    my $codepipeline = Paws->service('CodePipeline');
    my $DeregisterWebhookWithThirdPartyOutput =
      $codepipeline->DeregisterWebhookWithThirdParty(
      WebhookName => 'MyWebhookName',    # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codepipeline/DeregisterWebhookWithThirdParty>

=head1 ATTRIBUTES


=head2 WebhookName => Str

The name of the webhook you want to deregister.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeregisterWebhookWithThirdParty in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

