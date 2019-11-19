
package Paws::GroundStation::GetMissionProfile;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::GroundStation::Types qw//;
  has MissionProfileId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'GetMissionProfile');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/missionprofile/{missionProfileId}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::GroundStation::GetMissionProfileResponse');

    sub params_map {
    our $Params_map ||= {
  'ParamInURI' => {
                    'MissionProfileId' => 'missionProfileId'
                  },
  'types' => {
               'MissionProfileId' => {
                                       'type' => 'Str'
                                     }
             },
  'IsRequired' => {
                    'MissionProfileId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::GroundStation::GetMissionProfile - Arguments for method GetMissionProfile on L<Paws::GroundStation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetMissionProfile on the
L<AWS Ground Station|Paws::GroundStation> service. Use the attributes of this class
as arguments to method GetMissionProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetMissionProfile.

=head1 SYNOPSIS

    my $groundstation = Paws->service('GroundStation');
    my $GetMissionProfileResponse = $groundstation->GetMissionProfile(
      MissionProfileId => 'MyString',

    );

    # Results:
    my $ContactPostPassDurationSeconds =
      $GetMissionProfileResponse->ContactPostPassDurationSeconds;
    my $ContactPrePassDurationSeconds =
      $GetMissionProfileResponse->ContactPrePassDurationSeconds;
    my $DataflowEdges = $GetMissionProfileResponse->DataflowEdges;
    my $MinimumViableContactDurationSeconds =
      $GetMissionProfileResponse->MinimumViableContactDurationSeconds;
    my $MissionProfileArn = $GetMissionProfileResponse->MissionProfileArn;
    my $MissionProfileId  = $GetMissionProfileResponse->MissionProfileId;
    my $Name              = $GetMissionProfileResponse->Name;
    my $Region            = $GetMissionProfileResponse->Region;
    my $Tags              = $GetMissionProfileResponse->Tags;
    my $TrackingConfigArn = $GetMissionProfileResponse->TrackingConfigArn;

    # Returns a L<Paws::GroundStation::GetMissionProfileResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/groundstation/GetMissionProfile>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MissionProfileId => Str

UUID of a mission profile.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetMissionProfile in L<Paws::GroundStation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

