
package Paws::GuardDuty::GetDetectorResponse;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt');
  has FindingPublishingFrequency => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'findingPublishingFrequency');
  has ServiceRole => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceRole', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::GuardDuty::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has UpdatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updatedAt');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::GetDetectorResponse

=head1 ATTRIBUTES


=head2 CreatedAt => Str

Detector creation timestamp.


=head2 FindingPublishingFrequency => Str

Finding publishing frequency.

Valid values are: C<"FIFTEEN_MINUTES">, C<"ONE_HOUR">, C<"SIX_HOURS">
=head2 B<REQUIRED> ServiceRole => Str

The GuardDuty service role.


=head2 B<REQUIRED> Status => Str

The detector status.

Valid values are: C<"ENABLED">, C<"DISABLED">
=head2 Tags => L<Paws::GuardDuty::TagMap>

The tags of the detector resource.


=head2 UpdatedAt => Str

Detector last update timestamp.


=head2 _request_id => Str


=cut

