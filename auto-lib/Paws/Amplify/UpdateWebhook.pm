
package Paws::Amplify::UpdateWebhook;
  use Moose;
  has BranchName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'branchName');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has WebhookId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'webhookId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateWebhook');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/webhooks/{webhookId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Amplify::UpdateWebhookResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Amplify::UpdateWebhook - Arguments for method UpdateWebhook on L<Paws::Amplify>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateWebhook on the
L<AWS Amplify|Paws::Amplify> service. Use the attributes of this class
as arguments to method UpdateWebhook.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateWebhook.

=head1 SYNOPSIS

    my $amplify = Paws->service('Amplify');
    my $UpdateWebhookResult = $amplify->UpdateWebhook(
      WebhookId   => 'MyWebhookId',
      BranchName  => 'MyBranchName',     # OPTIONAL
      Description => 'MyDescription',    # OPTIONAL
    );

    # Results:
    my $Webhook = $UpdateWebhookResult->Webhook;

    # Returns a L<Paws::Amplify::UpdateWebhookResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/amplify/UpdateWebhook>

=head1 ATTRIBUTES


=head2 BranchName => Str

Name for a branch, part of an Amplify App.



=head2 Description => Str

Description for a webhook.



=head2 B<REQUIRED> WebhookId => Str

Unique Id for a webhook.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateWebhook in L<Paws::Amplify>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

