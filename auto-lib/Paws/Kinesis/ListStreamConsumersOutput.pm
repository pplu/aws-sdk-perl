# Generated from json/callresult_class.tt

package Paws::Kinesis::ListStreamConsumersOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Kinesis::Types qw/Kinesis_Consumer/;
  has Consumers => (is => 'ro', isa => ArrayRef[Kinesis_Consumer]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Consumers' => {
                                'class' => 'Paws::Kinesis::Consumer',
                                'type' => 'ArrayRef[Kinesis_Consumer]'
                              }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Kinesis::ListStreamConsumersOutput

=head1 ATTRIBUTES


=head2 Consumers => ArrayRef[Kinesis_Consumer]

An array of JSON objects. Each object represents one registered
consumer.


=head2 NextToken => Str

When the number of consumers that are registered with the data stream
is greater than the default value for the C<MaxResults> parameter, or
if you explicitly specify a value for C<MaxResults> that is less than
the number of registered consumers, the response includes a pagination
token named C<NextToken>. You can specify this C<NextToken> value in a
subsequent call to C<ListStreamConsumers> to list the next set of
registered consumers. For more information about the use of this
pagination token when calling the C<ListStreamConsumers> operation, see
ListStreamConsumersInput$NextToken.

Tokens expire after 300 seconds. When you obtain a value for
C<NextToken> in the response to a call to C<ListStreamConsumers>, you
have 300 seconds to use that value. If you specify an expired token in
a call to C<ListStreamConsumers>, you get C<ExpiredNextTokenException>.


=head2 _request_id => Str


=cut

1;