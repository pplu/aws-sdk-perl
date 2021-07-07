
package Paws::LocationService::CreateMapResponse;
  use Moose;
  has CreateTime => (is => 'ro', isa => 'Str', required => 1);
  has MapArn => (is => 'ro', isa => 'Str', required => 1);
  has MapName => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::CreateMapResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreateTime => Str

The timestamp for when the map resource was created in ISO 8601
(https://www.iso.org/iso-8601-date-and-time-format.html) format:
C<YYYY-MM-DDThh:mm:ss.sssZ>.


=head2 B<REQUIRED> MapArn => Str

The Amazon Resource Name (ARN) for the map resource. Used when you need
to specify a resource across all AWS.

=over

=item *

Format example: C<arn:aws:geo:region:account-id:maps/ExampleMap>

=back



=head2 B<REQUIRED> MapName => Str

The name of the map resource.


=head2 _request_id => Str


=cut

