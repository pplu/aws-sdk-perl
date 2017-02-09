package Paws::LexRuntime;
  use Moose;
  sub service { 'runtime.lex' }
  sub version { '2016-11-28' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller', 'Paws::Net::RestJsonResponse';

  
  sub PostText {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LexRuntime::PostText', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/PostText / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::LexRuntime - Perl Interface to AWS Amazon Lex Runtime Service

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('LexRuntime');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

Amazon Lex provides both build and runtime endpoints. Each endpoint
provides a set of operations (API). Your application uses the runtime
API to understand user utterances (user input text or voice). For
example, suppose user says "I want pizza", your application sends this
input to Amazon Lex using the runtime API. Amazon Lex recognizes that
the user request is for the OrderPizza intent (one of the intents
defined in the application). Then Amazon Lex engages in user
conversation on behalf of the application to elicit required
information (slot values, such as pizza size and crust type), and then
performs fulfillment activity (that you configured when you created the
application). You use the build-time API to create and manage your
Amazon Lex applications. For a list of build-time operations, see the
build-time API. .

=head1 METHODS

=head2 PostText(BotAlias => Str, BotName => Str, InputText => Str, UserId => Str, [SessionAttributes => L<Paws::LexRuntime::StringMap>])

Each argument is described in detail in: L<Paws::LexRuntime::PostText>

Returns: a L<Paws::LexRuntime::PostTextResponse> instance

  Sends user input text to Amazon Lex at runtime. Amazon Lex uses the
machine learning model that the service built for the application to
interpret user input.

In response, Amazon Lex returns the next message to convey to the user
(based on the context of the user interaction) and whether to expect a
user response to the message (C<dialogState>). For example, consider
the following response messages:

=over

=item *

"What pizza toppings would you like?" E<ndash> In this case, the
C<dialogState> would be C<ElicitSlot> (that is, a user response is
expected).

=item *

"Your order has been placed." E<ndash> In this case, Amazon Lex returns
one of the following C<dialogState> values depending on how the intent
fulfillment is configured (see C<fulfillmentActivity> in
C<CreateIntent>):

=over

=item *

C<FulFilled> E<ndash> The intent fulfillment is configured through a
Lambda function.

=item *

C<ReadyForFulfilment> E<ndash> The intent's C<fulfillmentActivity> is
to simply return the intent data back to the client application.

=back

=back





=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

