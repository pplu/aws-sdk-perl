
package Paws::IoT1ClickProjects::DescribePlacementResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT1ClickProjects::Types qw/IoT1ClickProjects_PlacementDescription/;
  has Placement => (is => 'ro', isa => IoT1ClickProjects_PlacementDescription, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Placement' => {
                                'class' => 'Paws::IoT1ClickProjects::PlacementDescription',
                                'type' => 'IoT1ClickProjects_PlacementDescription'
                              }
             },
  'NameInRequest' => {
                       'Placement' => 'placement'
                     },
  'IsRequired' => {
                    'Placement' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT1ClickProjects::DescribePlacementResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Placement => IoT1ClickProjects_PlacementDescription

An object describing the placement.


=head2 _request_id => Str


=cut

