# Generated from json/callresult_class.tt

package Paws::DynamoDBStreams::ListStreamsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DynamoDBStreams::Types qw/DynamoDBStreams_Stream/;
  has LastEvaluatedStreamArn => (is => 'ro', isa => Str);
  has Streams => (is => 'ro', isa => ArrayRef[DynamoDBStreams_Stream]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Streams' => {
                              'type' => 'ArrayRef[DynamoDBStreams_Stream]',
                              'class' => 'Paws::DynamoDBStreams::Stream'
                            },
               'LastEvaluatedStreamArn' => {
                                             'type' => 'Str'
                                           }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DynamoDBStreams::ListStreamsOutput

=head1 ATTRIBUTES


=head2 LastEvaluatedStreamArn => Str

The stream ARN of the item where the operation stopped, inclusive of
the previous result set. Use this value to start a new operation,
excluding this value in the new request.

If C<LastEvaluatedStreamArn> is empty, then the "last page" of results
has been processed and there is no more data to be retrieved.

If C<LastEvaluatedStreamArn> is not empty, it does not necessarily mean
that there is more data in the result set. The only way to know when
you have reached the end of the result set is when
C<LastEvaluatedStreamArn> is empty.


=head2 Streams => ArrayRef[DynamoDBStreams_Stream]

A list of stream descriptors associated with the current account and
endpoint.


=head2 _request_id => Str


=cut

1;