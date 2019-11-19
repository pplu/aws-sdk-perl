
package Paws::IoTEventsData::ListDetectorsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::IoTEventsData::Types qw/IoTEventsData_DetectorSummary/;
  has DetectorSummaries => (is => 'ro', isa => ArrayRef[IoTEventsData_DetectorSummary]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'DetectorSummaries' => 'detectorSummaries',
                       'NextToken' => 'nextToken'
                     },
  'types' => {
               'DetectorSummaries' => {
                                        'class' => 'Paws::IoTEventsData::DetectorSummary',
                                        'type' => 'ArrayRef[IoTEventsData_DetectorSummary]'
                                      },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextToken' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTEventsData::ListDetectorsResponse

=head1 ATTRIBUTES


=head2 DetectorSummaries => ArrayRef[IoTEventsData_DetectorSummary]

A list of summary information about the detectors (instances).


=head2 NextToken => Str

A token to retrieve the next set of results, or C<null> if there are no
additional results.


=head2 _request_id => Str


=cut

