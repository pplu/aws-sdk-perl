
package Paws::LocationService::CreatePlaceIndexResponse;
  use Moose;
  has CreateTime => (is => 'ro', isa => 'Str', required => 1);
  has IndexArn => (is => 'ro', isa => 'Str', required => 1);
  has IndexName => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::CreatePlaceIndexResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreateTime => Str

The timestamp for when the Place index resource was created in ISO 8601
(https://www.iso.org/iso-8601-date-and-time-format.html) format:
C<YYYY-MM-DDThh:mm:ss.sssZ>.


=head2 B<REQUIRED> IndexArn => Str

The Amazon Resource Name (ARN) for the Place index resource. Used when
you need to specify a resource across all AWS.


=head2 B<REQUIRED> IndexName => Str

The name for the Place index resource.


=head2 _request_id => Str


=cut

