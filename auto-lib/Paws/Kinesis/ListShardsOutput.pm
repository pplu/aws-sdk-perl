# Generated from json/callresult_class.tt

package Paws::Kinesis::ListShardsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Kinesis::Types qw/Kinesis_Shard/;
  has NextToken => (is => 'ro', isa => Str);
  has Shards => (is => 'ro', isa => ArrayRef[Kinesis_Shard]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Shards' => {
                             'class' => 'Paws::Kinesis::Shard',
                             'type' => 'ArrayRef[Kinesis_Shard]'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Kinesis::ListShardsOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

When the number of shards in the data stream is greater than the
default value for the C<MaxResults> parameter, or if you explicitly
specify a value for C<MaxResults> that is less than the number of
shards in the data stream, the response includes a pagination token
named C<NextToken>. You can specify this C<NextToken> value in a
subsequent call to C<ListShards> to list the next set of shards. For
more information about the use of this pagination token when calling
the C<ListShards> operation, see ListShardsInput$NextToken.

Tokens expire after 300 seconds. When you obtain a value for
C<NextToken> in the response to a call to C<ListShards>, you have 300
seconds to use that value. If you specify an expired token in a call to
C<ListShards>, you get C<ExpiredNextTokenException>.


=head2 Shards => ArrayRef[Kinesis_Shard]

An array of JSON objects. Each object represents one shard and
specifies the IDs of the shard, the shard's parent, and the shard
that's adjacent to the shard's parent. Each object also contains the
starting and ending hash keys and the starting and ending sequence
numbers for the shard.


=head2 _request_id => Str


=cut

1;