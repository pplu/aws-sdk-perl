# Generated from json/callresult_class.tt

package Paws::Kinesis::GetRecordsOutput;
  use Moo;
  use Types::Standard qw/Str Int ArrayRef/;
  use Paws::Kinesis::Types qw/Kinesis_Record/;
  has MillisBehindLatest => (is => 'ro', isa => Int);
  has NextShardIterator => (is => 'ro', isa => Str);
  has Records => (is => 'ro', isa => ArrayRef[Kinesis_Record], required => 1);

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
               'MillisBehindLatest' => {
                                         'type' => 'Int'
                                       },
               'Records' => {
                              'class' => 'Paws::Kinesis::Record',
                              'type' => 'ArrayRef[Kinesis_Record]'
                            }
             },
  'IsRequired' => {
                    'Records' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Kinesis::GetRecordsOutput

=head1 ATTRIBUTES


=head2 MillisBehindLatest => Int

The number of milliseconds the GetRecords response is from the tip of
the stream, indicating how far behind current time the consumer is. A
value of zero indicates that record processing is caught up, and there
are no new records to process at this moment.


=head2 NextShardIterator => Str

The next position in the shard from which to start sequentially reading
data records. If set to C<null>, the shard has been closed and the
requested iterator does not return any more data.


=head2 B<REQUIRED> Records => ArrayRef[Kinesis_Record]

The data records retrieved from the shard.


=head2 _request_id => Str


=cut

1;