
package Paws::IoT1ClickProjects::ListPlacementsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::IoT1ClickProjects::Types qw/IoT1ClickProjects_PlacementSummary/;
  has NextToken => (is => 'ro', isa => Str);
  has Placements => (is => 'ro', isa => ArrayRef[IoT1ClickProjects_PlacementSummary], required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Placements' => {
                                 'class' => 'Paws::IoT1ClickProjects::PlacementSummary',
                                 'type' => 'ArrayRef[IoT1ClickProjects_PlacementSummary]'
                               },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'Placements' => 1
                  },
  'NameInRequest' => {
                       'Placements' => 'placements',
                       'NextToken' => 'nextToken'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT1ClickProjects::ListPlacementsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token used to retrieve the next set of results - will be
effectively empty if there are no further results.


=head2 B<REQUIRED> Placements => ArrayRef[IoT1ClickProjects_PlacementSummary]

An object listing the requested placements.


=head2 _request_id => Str


=cut

