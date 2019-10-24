
package Paws::IoTEvents::ListDetectorModelsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::IoTEvents::Types qw/IoTEvents_DetectorModelSummary/;
  has DetectorModelSummaries => (is => 'ro', isa => ArrayRef[IoTEvents_DetectorModelSummary]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DetectorModelSummaries' => {
                                             'class' => 'Paws::IoTEvents::DetectorModelSummary',
                                             'type' => 'ArrayRef[IoTEvents_DetectorModelSummary]'
                                           }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'DetectorModelSummaries' => 'detectorModelSummaries'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTEvents::ListDetectorModelsResponse

=head1 ATTRIBUTES


=head2 DetectorModelSummaries => ArrayRef[IoTEvents_DetectorModelSummary]

Summary information about the detector models.


=head2 NextToken => Str

A token to retrieve the next set of results, or C<null> if there are no
additional results.


=head2 _request_id => Str


=cut

