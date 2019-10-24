# Generated from json/callresult_class.tt

package Paws::Kinesis::SubscribeToShardOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Kinesis::Types qw/Kinesis_SubscribeToShardEventStream/;
  has EventStream => (is => 'ro', isa => Kinesis_SubscribeToShardEventStream, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'EventStream' => {
                                  'class' => 'Paws::Kinesis::SubscribeToShardEventStream',
                                  'type' => 'Kinesis_SubscribeToShardEventStream'
                                }
             },
  'IsRequired' => {
                    'EventStream' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Kinesis::SubscribeToShardOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> EventStream => Kinesis_SubscribeToShardEventStream

The event stream that your consumer can use to read records from the
shard.


=head2 _request_id => Str


=cut

1;