
package Paws::GroundStation::DescribeContactResponse;
  use Moose;
  has ContactId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'contactId');
  has ContactStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'contactStatus');
  has EndTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'endTime');
  has ErrorMessage => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'errorMessage');
  has GroundStation => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'groundStation');
  has MaximumElevation => (is => 'ro', isa => 'Paws::GroundStation::Elevation', traits => ['NameInRequest'], request_name => 'maximumElevation');
  has MissionProfileArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'missionProfileArn');
  has PostPassEndTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'postPassEndTime');
  has PrePassStartTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'prePassStartTime');
  has Region => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'region');
  has SatelliteArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'satelliteArn');
  has StartTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'startTime');
  has Tags => (is => 'ro', isa => 'Paws::GroundStation::TagsMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GroundStation::DescribeContactResponse

=head1 ATTRIBUTES


=head2 ContactId => Str

UUID of a contact.


=head2 ContactStatus => Str

Status of a contact.

Valid values are: C<"AVAILABLE">, C<"AWS_CANCELLED">, C<"CANCELLED">, C<"CANCELLING">, C<"COMPLETED">, C<"FAILED">, C<"FAILED_TO_SCHEDULE">, C<"PASS">, C<"POSTPASS">, C<"PREPASS">, C<"SCHEDULED">, C<"SCHEDULING">
=head2 EndTime => Str

End time of a contact.


=head2 ErrorMessage => Str

Error message for a contact.


=head2 GroundStation => Str

Ground station for a contact.


=head2 MaximumElevation => L<Paws::GroundStation::Elevation>

Maximum elevation angle of a contact.


=head2 MissionProfileArn => Str

ARN of a mission profile.


=head2 PostPassEndTime => Str

Amount of time after a contact ends that youE<rsquo>d like to receive a
CloudWatch event indicating the pass has finished.


=head2 PrePassStartTime => Str

Amount of time prior to contact start youE<rsquo>d like to receive a
CloudWatch event indicating an upcoming pass.


=head2 Region => Str

Region of a contact.


=head2 SatelliteArn => Str

ARN of a satellite.


=head2 StartTime => Str

Start time of a contact.


=head2 Tags => L<Paws::GroundStation::TagsMap>

Tags assigned to a contact.


=head2 _request_id => Str


=cut

