# Generated from json/callresult_class.tt

package Paws::CloudWatchLogs::TestMetricFilterResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CloudWatchLogs::Types qw/CloudWatchLogs_MetricFilterMatchRecord/;
  has Matches => (is => 'ro', isa => ArrayRef[CloudWatchLogs_MetricFilterMatchRecord]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Matches' => {
                              'type' => 'ArrayRef[CloudWatchLogs_MetricFilterMatchRecord]',
                              'class' => 'Paws::CloudWatchLogs::MetricFilterMatchRecord'
                            }
             },
  'NameInRequest' => {
                       'Matches' => 'matches'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::TestMetricFilterResponse

=head1 ATTRIBUTES


=head2 Matches => ArrayRef[CloudWatchLogs_MetricFilterMatchRecord]

The matched events.


=head2 _request_id => Str


=cut

1;