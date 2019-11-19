
package Paws::IoTEventsData::BatchPutMessageResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::IoTEventsData::Types qw/IoTEventsData_BatchPutMessageErrorEntry/;
  has BatchPutMessageErrorEntries => (is => 'ro', isa => ArrayRef[IoTEventsData_BatchPutMessageErrorEntry]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'BatchPutMessageErrorEntries' => {
                                                  'class' => 'Paws::IoTEventsData::BatchPutMessageErrorEntry',
                                                  'type' => 'ArrayRef[IoTEventsData_BatchPutMessageErrorEntry]'
                                                }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTEventsData::BatchPutMessageResponse

=head1 ATTRIBUTES


=head2 BatchPutMessageErrorEntries => ArrayRef[IoTEventsData_BatchPutMessageErrorEntry]

A list of any errors encountered when sending the messages.


=head2 _request_id => Str


=cut

