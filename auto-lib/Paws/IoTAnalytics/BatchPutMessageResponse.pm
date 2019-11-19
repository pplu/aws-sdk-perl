
package Paws::IoTAnalytics::BatchPutMessageResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::IoTAnalytics::Types qw/IoTAnalytics_BatchPutMessageErrorEntry/;
  has BatchPutMessageErrorEntries => (is => 'ro', isa => ArrayRef[IoTAnalytics_BatchPutMessageErrorEntry]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'BatchPutMessageErrorEntries' => 'batchPutMessageErrorEntries'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'BatchPutMessageErrorEntries' => {
                                                  'class' => 'Paws::IoTAnalytics::BatchPutMessageErrorEntry',
                                                  'type' => 'ArrayRef[IoTAnalytics_BatchPutMessageErrorEntry]'
                                                }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::BatchPutMessageResponse

=head1 ATTRIBUTES


=head2 BatchPutMessageErrorEntries => ArrayRef[IoTAnalytics_BatchPutMessageErrorEntry]

A list of any errors encountered when sending the messages to the
channel.


=head2 _request_id => Str


=cut

