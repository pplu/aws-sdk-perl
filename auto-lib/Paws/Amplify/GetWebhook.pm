
package Paws::Amplify::GetWebhook;
  use Moose;
  has WebhookId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'webhookId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetWebhook');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/webhooks/{webhookId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Amplify::GetWebhookResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Amplify::GetWebhook - Arguments for method GetWebhook on L<Paws::Amplify>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetWebhook on the
L<AWS Amplify|Paws::Amplify> service. Use the attributes of this class
as arguments to method GetWebhook.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetWebhook.

=head1 SYNOPSIS

    my $amplify = Paws->service('Amplify');
    my $GetWebhookResult = $amplify->GetWebhook(
      WebhookId => 'MyWebhookId',

    );

    # Results:
    my $Webhook = $GetWebhookResult->Webhook;

    # Returns a L<Paws::Amplify::GetWebhookResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/amplify/GetWebhook>

=head1 ATTRIBUTES


=head2 B<REQUIRED> WebhookId => Str

Unique Id for a webhook.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetWebhook in L<Paws::Amplify>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

