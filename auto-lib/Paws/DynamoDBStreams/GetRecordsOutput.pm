# Generated from json/callresult_class.tt

package Paws::DynamoDBStreams::GetRecordsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DynamoDBStreams::Types qw/DynamoDBStreams_Record/;
  has NextShardIterator => (is => 'ro', isa => Str);
  has Records => (is => 'ro', isa => ArrayRef[DynamoDBStreams_Record]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextShardIterator' => {
                                        'type' => 'Str'
                                      },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Records' => {
                              'class' => 'Paws::DynamoDBStreams::Record',
                              'type' => 'ArrayRef[DynamoDBStreams_Record]'
                            }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DynamoDBStreams::GetRecordsOutput

=head1 ATTRIBUTES


=head2 NextShardIterator => Str

The next position in the shard from which to start sequentially reading
stream records. If set to C<null>, the shard has been closed and the
requested iterator will not return any more data.


=head2 Records => ArrayRef[DynamoDBStreams_Record]

The stream records from the shard, which were retrieved using the shard
iterator.


=head2 _request_id => Str


=cut

1;