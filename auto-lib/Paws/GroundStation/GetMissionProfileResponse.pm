
package Paws::GroundStation::GetMissionProfileResponse;
  use Moose;
  has ContactPostPassDurationSeconds => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'contactPostPassDurationSeconds');
  has ContactPrePassDurationSeconds => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'contactPrePassDurationSeconds');
  has DataflowEdges => (is => 'ro', isa => 'ArrayRef[ArrayRef[Str|Undef]]', traits => ['NameInRequest'], request_name => 'dataflowEdges');
  has MinimumViableContactDurationSeconds => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'minimumViableContactDurationSeconds');
  has MissionProfileArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'missionProfileArn');
  has MissionProfileId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'missionProfileId');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has Region => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'region');
  has Tags => (is => 'ro', isa => 'Paws::GroundStation::TagsMap', traits => ['NameInRequest'], request_name => 'tags');
  has TrackingConfigArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'trackingConfigArn');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GroundStation::GetMissionProfileResponse

=head1 ATTRIBUTES


=head2 ContactPostPassDurationSeconds => Int

Amount of time after a contact ends that youE<rsquo>d like to receive a
CloudWatch event indicating the pass has finished.


=head2 ContactPrePassDurationSeconds => Int

Amount of time prior to contact start youE<rsquo>d like to receive a
CloudWatch event indicating an upcoming pass.


=head2 DataflowEdges => ArrayRef[ArrayRef[Str|Undef]]

A list of lists of ARNs. Each list of ARNs is an edge, with a I<from>
C<Config> and a I<to> C<Config>.


=head2 MinimumViableContactDurationSeconds => Int

Smallest amount of time in seconds that youE<rsquo>d like to see for an
available contact. AWS Ground Station will not present you with
contacts shorter than this duration.


=head2 MissionProfileArn => Str

ARN of a mission profile.


=head2 MissionProfileId => Str

UUID of a mission profile.


=head2 Name => Str

Name of a mission profile.


=head2 Region => Str

Region of a mission profile.


=head2 Tags => L<Paws::GroundStation::TagsMap>

Tags assigned to a mission profile.


=head2 TrackingConfigArn => Str

ARN of a tracking C<Config>.


=head2 _request_id => Str


=cut

