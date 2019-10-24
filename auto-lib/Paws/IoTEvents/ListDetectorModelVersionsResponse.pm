
package Paws::IoTEvents::ListDetectorModelVersionsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::IoTEvents::Types qw/IoTEvents_DetectorModelVersionSummary/;
  has DetectorModelVersionSummaries => (is => 'ro', isa => ArrayRef[IoTEvents_DetectorModelVersionSummary]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DetectorModelVersionSummaries' => {
                                                    'class' => 'Paws::IoTEvents::DetectorModelVersionSummary',
                                                    'type' => 'ArrayRef[IoTEvents_DetectorModelVersionSummary]'
                                                  },
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'DetectorModelVersionSummaries' => 'detectorModelVersionSummaries',
                       'NextToken' => 'nextToken'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTEvents::ListDetectorModelVersionsResponse

=head1 ATTRIBUTES


=head2 DetectorModelVersionSummaries => ArrayRef[IoTEvents_DetectorModelVersionSummary]

Summary information about the detector model versions.


=head2 NextToken => Str

A token to retrieve the next set of results, or C<null> if there are no
additional results.


=head2 _request_id => Str


=cut

