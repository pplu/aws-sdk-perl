
package Paws::LocationService::CreateTrackerResponse;
  use Moose;
  has CreateTime => (is => 'ro', isa => 'Str', required => 1);
  has TrackerArn => (is => 'ro', isa => 'Str', required => 1);
  has TrackerName => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::CreateTrackerResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreateTime => Str

The timestamp for when the tracker resource was created in ISO 8601
(https://www.iso.org/iso-8601-date-and-time-format.html) format:
C<YYYY-MM-DDThh:mm:ss.sssZ>.


=head2 B<REQUIRED> TrackerArn => Str

The Amazon Resource Name (ARN) for the tracker resource. Used when you
need to specify a resource across all AWS.


=head2 B<REQUIRED> TrackerName => Str

The name of the tracker resource.


=head2 _request_id => Str


=cut

