
package Paws::LexRuntime::PostText;
  use Moose;
  has BotAlias => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botAlias' , required => 1);
  has BotName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botName' , required => 1);
  has InputText => (is => 'ro', isa => 'Str', required => 1);
  has SessionAttributes => (is => 'ro', isa => 'Paws::LexRuntime::StringMap');
  has UserId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'userId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PostText');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/bot/{botName}/alias/{botAlias}/user/{userId}/text');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexRuntime::PostTextResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexRuntime::PostText - Arguments for method PostText on Paws::LexRuntime

=head1 DESCRIPTION

This class represents the parameters used for calling the method PostText on the 
Amazon Lex Runtime Service service. Use the attributes of this class
as arguments to method PostText.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PostText.

As an example:

  $service_obj->PostText(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> BotAlias => Str

Alias of the Amazon Lex bot.



=head2 B<REQUIRED> BotName => Str

Name of the Amazon Lex bot.



=head2 B<REQUIRED> InputText => Str

Text user entered (Amazon Lex interprets this text).



=head2 SessionAttributes => L<Paws::LexRuntime::StringMap>

A session represents the dialog between a user and Amazon Lex. At
runtime, a client application can pass contextual information (session
attributes) in the request. For example, C<"FirstName" : "Joe">. Amazon
Lex passes these session attributes to the AWS Lambda functions
configured for the intent (see C<dialogCodeHook> and
C<fulfillmentActivity.codeHook> in C<CreateIntent>).

In your Lambda function, you can use the session attributes for
customization. Some examples are:

=over

=item *

In a pizza ordering application, if you can pass user location as a
session attribute (for example, C<"Location" : "111 Maple street">),
your Lambda function might use this information to determine the
closest pizzeria to place the order.

=item *

Use session attributes to personalize prompts. For example, you pass in
user name as a session attribute (C<"FirstName" : "Joe">), you might
configure subsequent prompts to refer to this attribute, as
C<$session.FirstName">. At runtime, Amazon Lex substitutes a real value
when it generates a prompt, such as "Hello Joe, what would you like to
order?"

=back

Amazon Lex does not persist session attributes.

If the intent is configured without a Lambda function to process the
intent (that is, the client application to process the intent), Amazon
Lex simply returns the session attributes back to the client
application.

If the intent is configured with a Lambda function to process the
intent, Amazon Lex passes the incoming session attributes to the Lambda
function. The Lambda function must return these session attributes if
you want Amazon Lex to return them back to the client.



=head2 B<REQUIRED> UserId => Str

User ID of your client application. Typically, each of your application
users should have a unique ID. Note the following considerations:

=over

=item *

If you want a user to start a conversation on one mobile device and
continue the conversation on another device, you might choose a
user-specific identifier, such as a login or Amazon Cognito user ID
(assuming your application is using Amazon Cognito).

=item *

If you want the same user to be able to have two independent
conversations on two different devices, you might choose a
device-specific identifier, such as device ID, or some globally unique
identifier.

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PostText in L<Paws::LexRuntime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

