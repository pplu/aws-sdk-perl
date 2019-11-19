
package Paws::Amplify::DeleteWebhook;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Amplify::Types qw//;
  has WebhookId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DeleteWebhook');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/webhooks/{webhookId}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'DELETE');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Amplify::DeleteWebhookResult');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'WebhookId' => {
                                'type' => 'Str'
                              }
             },
  'IsRequired' => {
                    'WebhookId' => 1
                  },
  'ParamInURI' => {
                    'WebhookId' => 'webhookId'
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Amplify::DeleteWebhook - Arguments for method DeleteWebhook on L<Paws::Amplify>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteWebhook on the
L<AWS Amplify|Paws::Amplify> service. Use the attributes of this class
as arguments to method DeleteWebhook.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteWebhook.

=head1 SYNOPSIS

    my $amplify = Paws->service('Amplify');
    my $DeleteWebhookResult = $amplify->DeleteWebhook(
      WebhookId => 'MyWebhookId',

    );

    # Results:
    my $Webhook = $DeleteWebhookResult->Webhook;

    # Returns a L<Paws::Amplify::DeleteWebhookResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/amplify/DeleteWebhook>

=head1 ATTRIBUTES


=head2 B<REQUIRED> WebhookId => Str

Unique Id for a webhook.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteWebhook in L<Paws::Amplify>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

