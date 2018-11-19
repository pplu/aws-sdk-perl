
package Paws::SNS::Subscribe;
  use Moose;
  has Attributes => (is => 'ro', isa => 'Paws::SNS::SubscriptionAttributesMap');
  has Endpoint => (is => 'ro', isa => 'Str');
  has Protocol => (is => 'ro', isa => 'Str', required => 1);
  has ReturnSubscriptionArn => (is => 'ro', isa => 'Bool');
  has TopicArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'Subscribe');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SNS::SubscribeResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'SubscribeResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SNS::Subscribe - Arguments for method Subscribe on L<Paws::SNS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method Subscribe on the
L<Amazon Simple Notification Service|Paws::SNS> service. Use the attributes of this class
as arguments to method Subscribe.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to Subscribe.

=head1 SYNOPSIS

    my $sns = Paws->service('SNS');
    my $SubscribeResponse = $sns->Subscribe(
      Protocol   => 'Myprotocol',
      TopicArn   => 'MytopicARN',
      Attributes => { 'MyattributeName' => 'MyattributeValue', },    # OPTIONAL
      Endpoint   => 'Myendpoint',                                    # OPTIONAL
      ReturnSubscriptionArn => 1,                                    # OPTIONAL
    );

    # Results:
    my $SubscriptionArn = $SubscribeResponse->SubscriptionArn;

    # Returns a L<Paws::SNS::SubscribeResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sns/Subscribe>

=head1 ATTRIBUTES


=head2 Attributes => L<Paws::SNS::SubscriptionAttributesMap>

A map of attributes with their corresponding values.

The following lists the names, descriptions, and values of the special
request parameters that the C<SetTopicAttributes> action uses:

=over

=item *

C<DeliveryPolicy> E<ndash> The policy that defines how Amazon SNS
retries failed deliveries to HTTP/S endpoints.

=item *

C<FilterPolicy> E<ndash> The simple JSON object that lets your
subscriber receive only a subset of messages, rather than receiving
every message published to the topic.

=item *

C<RawMessageDelivery> E<ndash> When set to C<true>, enables raw message
delivery to Amazon SQS or HTTP/S endpoints. This eliminates the need
for the endpoints to process JSON formatting, which is otherwise
created for Amazon SNS metadata.

=back




=head2 Endpoint => Str

The endpoint that you want to receive notifications. Endpoints vary by
protocol:

=over

=item *

For the C<http> protocol, the endpoint is an URL beginning with
"http://"

=item *

For the C<https> protocol, the endpoint is a URL beginning with
"https://"

=item *

For the C<email> protocol, the endpoint is an email address

=item *

For the C<email-json> protocol, the endpoint is an email address

=item *

For the C<sms> protocol, the endpoint is a phone number of an
SMS-enabled device

=item *

For the C<sqs> protocol, the endpoint is the ARN of an Amazon SQS queue

=item *

For the C<application> protocol, the endpoint is the EndpointArn of a
mobile app and device.

=item *

For the C<lambda> protocol, the endpoint is the ARN of an AWS Lambda
function.

=back




=head2 B<REQUIRED> Protocol => Str

The protocol you want to use. Supported protocols include:

=over

=item *

C<http> E<ndash> delivery of JSON-encoded message via HTTP POST

=item *

C<https> E<ndash> delivery of JSON-encoded message via HTTPS POST

=item *

C<email> E<ndash> delivery of message via SMTP

=item *

C<email-json> E<ndash> delivery of JSON-encoded message via SMTP

=item *

C<sms> E<ndash> delivery of message via SMS

=item *

C<sqs> E<ndash> delivery of JSON-encoded message to an Amazon SQS queue

=item *

C<application> E<ndash> delivery of JSON-encoded message to an
EndpointArn for a mobile app and device.

=item *

C<lambda> E<ndash> delivery of JSON-encoded message to an AWS Lambda
function.

=back




=head2 ReturnSubscriptionArn => Bool

Sets whether the response from the C<Subscribe> request includes the
subscription ARN, even if the subscription is not yet confirmed.

If you set this parameter to C<false>, the response includes the ARN
for confirmed subscriptions, but it includes an ARN value of "pending
subscription" for subscriptions that are not yet confirmed. A
subscription becomes confirmed when the subscriber calls the
C<ConfirmSubscription> action with a confirmation token.

If you set this parameter to C<true>, the response includes the ARN in
all cases, even if the subscription is not yet confirmed.

The default value is C<false>.



=head2 B<REQUIRED> TopicArn => Str

The ARN of the topic you want to subscribe to.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method Subscribe in L<Paws::SNS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

