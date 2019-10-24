
package Paws::GroundStation::ListMissionProfilesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::GroundStation::Types qw/GroundStation_MissionProfileListItem/;
  has MissionProfileList => (is => 'ro', isa => ArrayRef[GroundStation_MissionProfileListItem]);
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
               'MissionProfileList' => {
                                         'class' => 'Paws::GroundStation::MissionProfileListItem',
                                         'type' => 'ArrayRef[GroundStation_MissionProfileListItem]'
                                       }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'MissionProfileList' => 'missionProfileList'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::GroundStation::ListMissionProfilesResponse

=head1 ATTRIBUTES


=head2 MissionProfileList => ArrayRef[GroundStation_MissionProfileListItem]

List of mission profiles


=head2 NextToken => Str

Next token returned in the response of a previous
C<ListMissionProfiles> call. Used to get the next page of results.


=head2 _request_id => Str


=cut

