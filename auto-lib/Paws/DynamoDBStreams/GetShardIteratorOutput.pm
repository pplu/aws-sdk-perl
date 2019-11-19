# Generated from json/callresult_class.tt

package Paws::DynamoDBStreams::GetShardIteratorOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DynamoDBStreams::Types qw//;
  has ShardIterator => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ShardIterator' => {
                                    'type' => 'Str'
                                  }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DynamoDBStreams::GetShardIteratorOutput

=head1 ATTRIBUTES


=head2 ShardIterator => Str

The position in the shard from which to start reading stream records
sequentially. A shard iterator specifies this position using the
sequence number of a stream record in a shard.


=head2 _request_id => Str


=cut

1;