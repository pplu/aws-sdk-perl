# Generated from json/callresult_class.tt

package Paws::Kinesis::UpdateShardCountOutput;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::Kinesis::Types qw//;
  has CurrentShardCount => (is => 'ro', isa => Int);
  has StreamName => (is => 'ro', isa => Str);
  has TargetShardCount => (is => 'ro', isa => Int);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TargetShardCount' => {
                                       'type' => 'Int'
                                     },
               'CurrentShardCount' => {
                                        'type' => 'Int'
                                      },
               'StreamName' => {
                                 'type' => 'Str'
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

Paws::Kinesis::UpdateShardCountOutput

=head1 ATTRIBUTES


=head2 CurrentShardCount => Int

The current number of shards.


=head2 StreamName => Str

The name of the stream.


=head2 TargetShardCount => Int

The updated number of shards.


=head2 _request_id => Str


=cut

1;