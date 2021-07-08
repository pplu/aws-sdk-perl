
package Paws::EC2::CreatePlacementGroupResult;
  use Moose;
  has PlacementGroup => (is => 'ro', isa => 'Paws::EC2::PlacementGroup', request_name => 'placementGroup', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreatePlacementGroupResult

=head1 ATTRIBUTES


=head2 PlacementGroup => L<Paws::EC2::PlacementGroup>




=head2 _request_id => Str


=cut

