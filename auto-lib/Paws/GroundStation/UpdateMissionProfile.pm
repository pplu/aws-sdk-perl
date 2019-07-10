
package Paws::GroundStation::UpdateMissionProfile;
  use Moose;
  has ContactPostPassDurationSeconds => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'contactPostPassDurationSeconds');
  has ContactPrePassDurationSeconds => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'contactPrePassDurationSeconds');
  has DataflowEdges => (is => 'ro', isa => 'ArrayRef[ArrayRef[Str|Undef]]', traits => ['NameInRequest'], request_name => 'dataflowEdges');
  has MinimumViableContactDurationSeconds => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'minimumViableContactDurationSeconds');
  has MissionProfileId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'missionProfileId', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has TrackingConfigArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'trackingConfigArn');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateMissionProfile');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/missionprofile/{missionProfileId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GroundStation::MissionProfileIdResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GroundStation::UpdateMissionProfile - Arguments for method UpdateMissionProfile on L<Paws::GroundStation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateMissionProfile on the
L<AWS Ground Station|Paws::GroundStation> service. Use the attributes of this class
as arguments to method UpdateMissionProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateMissionProfile.

=head1 SYNOPSIS

    my $groundstation = Paws->service('GroundStation');
    my $MissionProfileIdResponse = $groundstation->UpdateMissionProfile(
      MissionProfileId               => 'MyString',
      ContactPostPassDurationSeconds => 1,            # OPTIONAL
      ContactPrePassDurationSeconds  => 1,            # OPTIONAL
      DataflowEdges                  => [
        [ 'MyConfigArn', ... ], ...                   # min: 2, max: 2
      ],                                              # OPTIONAL
      MinimumViableContactDurationSeconds => 1,                # OPTIONAL
      Name                                => 'MySafeName',     # OPTIONAL
      TrackingConfigArn                   => 'MyConfigArn',    # OPTIONAL
    );

    # Results:
    my $MissionProfileId = $MissionProfileIdResponse->MissionProfileId;

    # Returns a L<Paws::GroundStation::MissionProfileIdResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/groundstation/UpdateMissionProfile>

=head1 ATTRIBUTES


=head2 ContactPostPassDurationSeconds => Int

Amount of time after a contact ends that youE<rsquo>d like to receive a
CloudWatch event indicating the pass has finished.



=head2 ContactPrePassDurationSeconds => Int

Amount of time after a contact ends that youE<rsquo>d like to receive a
CloudWatch event indicating the pass has finished.



=head2 DataflowEdges => ArrayRef[ArrayRef[Str|Undef]]

A list of lists of ARNs. Each list of ARNs is an edge, with a from
C<Config> and a to C<Config>.



=head2 MinimumViableContactDurationSeconds => Int

Smallest amount of time in seconds that youE<rsquo>d like to see for an
available contact. AWS Ground Station will not present you with
contacts shorter than this duration.



=head2 B<REQUIRED> MissionProfileId => Str

ID of a mission profile.



=head2 Name => Str

Name of a mission profile.



=head2 TrackingConfigArn => Str

ARN of a tracking C<Config>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateMissionProfile in L<Paws::GroundStation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

