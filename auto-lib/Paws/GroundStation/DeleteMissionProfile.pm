
package Paws::GroundStation::DeleteMissionProfile;
  use Moose;
  has MissionProfileId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'missionProfileId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteMissionProfile');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/missionprofile/{missionProfileId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GroundStation::MissionProfileIdResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GroundStation::DeleteMissionProfile - Arguments for method DeleteMissionProfile on L<Paws::GroundStation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteMissionProfile on the
L<AWS Ground Station|Paws::GroundStation> service. Use the attributes of this class
as arguments to method DeleteMissionProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteMissionProfile.

=head1 SYNOPSIS

    my $groundstation = Paws->service('GroundStation');
    my $MissionProfileIdResponse = $groundstation->DeleteMissionProfile(
      MissionProfileId => 'MyString',

    );

    # Results:
    my $MissionProfileId = $MissionProfileIdResponse->MissionProfileId;

    # Returns a L<Paws::GroundStation::MissionProfileIdResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/groundstation/DeleteMissionProfile>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MissionProfileId => Str

UUID of a mission profile.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteMissionProfile in L<Paws::GroundStation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

