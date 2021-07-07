
package Paws::LocationService::CreateGeofenceCollectionResponse;
  use Moose;
  has CollectionArn => (is => 'ro', isa => 'Str', required => 1);
  has CollectionName => (is => 'ro', isa => 'Str', required => 1);
  has CreateTime => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::CreateGeofenceCollectionResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CollectionArn => Str

The Amazon Resource Name (ARN) for the geofence collection resource.
Used when you need to specify a resource across all AWS.

=over

=item *

Format example:
C<arn:aws:geo:region:account-id:geofence-collection/ExampleGeofenceCollection>

=back



=head2 B<REQUIRED> CollectionName => Str

The name for the geofence collection.


=head2 B<REQUIRED> CreateTime => Str

The timestamp for when the geofence collection was created in ISO 8601
(https://www.iso.org/iso-8601-date-and-time-format.html) format:
C<YYYY-MM-DDThh:mm:ss.sssZ>


=head2 _request_id => Str


=cut

