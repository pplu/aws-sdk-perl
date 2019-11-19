
package Paws::GuardDuty::CreateDetectorResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::GuardDuty::Types qw//;
  has DetectorId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'DetectorId' => 'detectorId'
                     },
  'types' => {
               'DetectorId' => {
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

1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::CreateDetectorResponse

=head1 ATTRIBUTES


=head2 DetectorId => Str

The unique ID of the created detector.


=head2 _request_id => Str


=cut

