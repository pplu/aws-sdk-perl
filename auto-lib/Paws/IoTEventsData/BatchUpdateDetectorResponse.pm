
package Paws::IoTEventsData::BatchUpdateDetectorResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::IoTEventsData::Types qw/IoTEventsData_BatchUpdateDetectorErrorEntry/;
  has BatchUpdateDetectorErrorEntries => (is => 'ro', isa => ArrayRef[IoTEventsData_BatchUpdateDetectorErrorEntry]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'BatchUpdateDetectorErrorEntries' => {
                                                      'class' => 'Paws::IoTEventsData::BatchUpdateDetectorErrorEntry',
                                                      'type' => 'ArrayRef[IoTEventsData_BatchUpdateDetectorErrorEntry]'
                                                    },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'BatchUpdateDetectorErrorEntries' => 'batchUpdateDetectorErrorEntries'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTEventsData::BatchUpdateDetectorResponse

=head1 ATTRIBUTES


=head2 BatchUpdateDetectorErrorEntries => ArrayRef[IoTEventsData_BatchUpdateDetectorErrorEntry]

A list of those detector updates that resulted in errors. (If an error
is listed here, the specific update did not occur.)


=head2 _request_id => Str


=cut

