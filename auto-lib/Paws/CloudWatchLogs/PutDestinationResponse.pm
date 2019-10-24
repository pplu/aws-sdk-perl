# Generated from json/callresult_class.tt

package Paws::CloudWatchLogs::PutDestinationResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudWatchLogs::Types qw/CloudWatchLogs_Destination/;
  has Destination => (is => 'ro', isa => CloudWatchLogs_Destination);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Destination' => {
                                  'class' => 'Paws::CloudWatchLogs::Destination',
                                  'type' => 'CloudWatchLogs_Destination'
                                }
             },
  'NameInRequest' => {
                       'Destination' => 'destination'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::PutDestinationResponse

=head1 ATTRIBUTES


=head2 Destination => CloudWatchLogs_Destination

The destination.


=head2 _request_id => Str


=cut

1;