
package Paws::WorkLink::DescribeFleetMetadataResponse;
  use Moose;
  has CompanyCode => (is => 'ro', isa => 'Str');
  has CreatedTime => (is => 'ro', isa => 'Str');
  has DisplayName => (is => 'ro', isa => 'Str');
  has FleetName => (is => 'ro', isa => 'Str');
  has FleetStatus => (is => 'ro', isa => 'Str');
  has LastUpdatedTime => (is => 'ro', isa => 'Str');
  has OptimizeForEndUserLocation => (is => 'ro', isa => 'Bool');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkLink::DescribeFleetMetadataResponse

=head1 ATTRIBUTES


=head2 CompanyCode => Str

The identifier used by users to sign in to the Amazon WorkLink app.


=head2 CreatedTime => Str

The time that the fleet was created.


=head2 DisplayName => Str

The name to display.


=head2 FleetName => Str

The name of the fleet.


=head2 FleetStatus => Str

The current state of the fleet.

Valid values are: C<"CREATING">, C<"ACTIVE">, C<"DELETING">, C<"DELETED">, C<"FAILED_TO_CREATE">, C<"FAILED_TO_DELETE">
=head2 LastUpdatedTime => Str

The time that the fleet was last updated.


=head2 OptimizeForEndUserLocation => Bool

The option to optimize for better performance by routing traffic
through the closest AWS Region to users, which may be outside of your
home Region.


=head2 _request_id => Str


=cut

