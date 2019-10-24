# Generated from json/callresult_class.tt

package Paws::Kinesis::DescribeLimitsOutput;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::Kinesis::Types qw//;
  has OpenShardCount => (is => 'ro', isa => Int, required => 1);
  has ShardLimit => (is => 'ro', isa => Int, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ShardLimit' => {
                                 'type' => 'Int'
                               },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'OpenShardCount' => {
                                     'type' => 'Int'
                                   }
             },
  'IsRequired' => {
                    'ShardLimit' => 1,
                    'OpenShardCount' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Kinesis::DescribeLimitsOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> OpenShardCount => Int

The number of open shards.


=head2 B<REQUIRED> ShardLimit => Int

The maximum number of shards.


=head2 _request_id => Str


=cut

1;