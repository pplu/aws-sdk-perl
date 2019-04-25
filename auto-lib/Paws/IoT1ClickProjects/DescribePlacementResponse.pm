
package Paws::IoT1ClickProjects::DescribePlacementResponse;
  use Moose;
  has Placement => (is => 'ro', isa => 'Paws::IoT1ClickProjects::PlacementDescription', traits => ['NameInRequest'], request_name => 'placement', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT1ClickProjects::DescribePlacementResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Placement => L<Paws::IoT1ClickProjects::PlacementDescription>

An object describing the placement.


=head2 _request_id => Str


=cut

