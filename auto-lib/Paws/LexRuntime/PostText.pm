
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

The alias of the Amazon Lex bot.



=head2 B<REQUIRED> BotName => Str

The name of the Amazon Lex bot.



=head2 B<REQUIRED> InputText => Str

The text that the user entered (Amazon Lex interprets this text).



=head2 SessionAttributes => L<Paws::LexRuntime::StringMap>

By using session attributes, a client application can pass contextual
information in the request to Amazon Lex For example,

=over

=item *

In Getting Started Exercise 1, the example bot uses the C<price>
session attribute to maintain the price of the flowers ordered (for
example, "Price":25). The code hook (the Lambda function) sets this
attribute based on the type of flowers ordered. For more information,
see Review the Details of Information Flow.

=item *

In the BookTrip bot exercise, the bot uses the C<currentReservation>
session attribute to maintain slot data during the in-progress
conversation to book a hotel or book a car. For more information, see
Details of Information Flow.

=item *

You might use the session attributes (key, value pairs) to track the
requestID of user requests.

=back

Amazon Lex simply passes these session attributes to the Lambda
functions configured for the intent.

In your Lambda function, you can also use the session attributes for
initialization and customization (prompts and response cards). Some
examples are:

=over

=item *

Initialization - In a pizza ordering bot, if you can pass the user
location as a session attribute (for example, C<"Location" : "111 Maple
street">), then your Lambda function might use this information to
determine the closest pizzeria to place the order (perhaps to set the
storeAddress slot value).

=item *

Personalize prompts - For example, you can configure prompts to refer
to the user name. (For example, "Hey [FirstName], what toppings would
you like?"). You can pass the user name as a session attribute
(C<"FirstName" : "Joe">) so that Amazon Lex can substitute the
placeholder to provide a personalize prompt to the user ("Hey Joe, what
toppings would you like?").

=back

Amazon Lex does not persist session attributes.

If you configure a code hook for the intent, Amazon Lex passes the
incoming session attributes to the Lambda function. If you want Amazon
Lex to return these session attributes back to the client, the Lambda
function must return them.

If there is no code hook configured for the intent, Amazon Lex simply
returns the session attributes back to the client application.



=head2 B<REQUIRED> UserId => Str

The ID of the client application user. The application developer
decides the user IDs. At runtime, each request must include the user
ID. Typically, each of your application users should have a unique ID.
Note the following considerations:

=over

=item *

If you want a user to start a conversation on one device and continue
the conversation on another device, you might choose a user-specific
identifier, such as a login or Amazon Cognito user ID (assuming your
application is using Amazon Cognito).

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

