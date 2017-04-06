
package Paws::LexRuntime::PostContent;
  use Moose;
  has Accept => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'accept' );
  has BotAlias => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botAlias' , required => 1);
  has BotName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botName' , required => 1);
  has ContentType => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'contentType' , required => 1);
  has InputStream => (is => 'ro', isa => 'Str', required => 1);
  has SessionAttributes => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'sessionAttributes' );
  has UserId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'userId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PostContent');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/bot/{botName}/alias/{botAlias}/user/{userId}/content');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexRuntime::PostContentResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexRuntime::PostContent - Arguments for method PostContent on Paws::LexRuntime

=head1 DESCRIPTION

This class represents the parameters used for calling the method PostContent on the 
Amazon Lex Runtime Service service. Use the attributes of this class
as arguments to method PostContent.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PostContent.

As an example:

  $service_obj->PostContent(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 Accept => Str

You pass this value as the C<Accept> HTTP header.

The message Amazon Lex returns in the response can be either text or
speech based on the C<Accept> HTTP header value in the request.

=over

=item *

If the value is C<text/plain; charset=utf-8>, Amazon Lex returns text
in the response.

=item *

If the value begins with C<audio/>, Amazon Lex returns speech in the
response. Amazon Lex uses Amazon Polly to generate the speech (using
the configuration you specified in the C<Accept> header). For example,
if you specify C<audio/mpeg> as the value, Amazon Lex returns speech in
the MPEG format.

The following are the accepted values:

=over

=item *

audio/mpeg

=item *

audio/ogg

=item *

audio/pcm

=item *

text/plain; charset=utf-8

=item *

audio/* (defaults to mpeg)

=back

=back




=head2 B<REQUIRED> BotAlias => Str

Alias of the Amazon Lex bot.



=head2 B<REQUIRED> BotName => Str

Name of the Amazon Lex bot.



=head2 B<REQUIRED> ContentType => Str

You pass this values as the C<Content-Type> HTTP header.

Indicates the audio format or text. The header value must start with
one of the following prefixes:

=over

=item *

PCM format

=over

=item *

audio/l16; rate=16000; channels=1

=item *

audio/x-l16; sample-rate=16000; channel-count=1

=back

=item *

Opus format

=over

=item *

audio/x-cbr-opus-with-preamble; preamble-size=0; bit-rate=1;
frame-size-milliseconds=1.1

=back

=item *

Text format

=over

=item *

text/plain; charset=utf-8

=back

=back




=head2 B<REQUIRED> InputStream => Str

User input in PCM or Opus audio format or text format as described in
the C<Content-Type> HTTP header.



=head2 SessionAttributes => Str

You pass this value in the C<x-amz-lex-session-attributes> HTTP header.
The value must be map (keys and values must be strings) that is JSON
serialized and then base64 encoded.

A session represents dialog between a user and Amazon Lex. At runtime,
a client application can pass contextual information, in the request to
Amazon Lex. For example,

=over

=item *

You might use session attributes to track the requestID of user
requests.

=item *

In Getting Started Exercise 1, the example bot uses the price session
attribute to maintain the price of flowers ordered (for example,
"price":25). The code hook (Lambda function) sets this attribute based
on the type of flowers ordered. For more information, see Review the
Details of Information Flow.

=item *

In the BookTrip bot exercise, the bot uses the C<currentReservation>
session attribute to maintains the slot data during the in-progress
conversation to book a hotel or book a car. For more information, see
Details of Information Flow.

=back

Amazon Lex passes these session attributes to the Lambda functions
configured for the intent In the your Lambda function, you can use the
session attributes for initialization and customization (prompts). Some
examples are:

=over

=item *

Initialization - In a pizza ordering bot, if you pass user location
(for example, C<"Location : 111 Maple Street">), then your Lambda
function might use this information to determine the closest pizzeria
to place the order (and perhaps set the storeAddress slot value as
well).

Personalized prompts - For example, you can configure prompts to refer
to the user by name (for example, "Hey [firstName], what toppings would
you like?"). You can pass the user's name as a session attribute
("firstName": "Joe") so that Amazon Lex can substitute the placeholder
to provide a personalized prompt to the user ("Hey Joe, what toppings
would you like?").

=back

Amazon Lex does not persist session attributes.

If you configured a code hook for the intent, Amazon Lex passes the
incoming session attributes to the Lambda function. The Lambda function
must return these session attributes if you want Amazon Lex to return
them to the client.

If there is no code hook configured for the intent Amazon Lex simply
returns the session attributes to the client application.



=head2 B<REQUIRED> UserId => Str

ID of the client application user. Typically, each of your application
users should have a unique ID. The application developer decides the
user IDs. At runtime, each request must include the user ID. Note the
following considerations:

=over

=item *

If you want a user to start conversation on one device and continue the
conversation on another device, you might choose a user-specific
identifier, such as the user's login, or Amazon Cognito user ID
(assuming your application is using Amazon Cognito).

=item *

If you want the same user to be able to have two independent
conversations on two different devices, you might choose
device-specific identifier, such as device ID, or some globally unique
identifier.

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PostContent in L<Paws::LexRuntime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

