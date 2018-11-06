
package Paws::AlexaForBusiness::UpdateProfile;
  use Moose;
  has Address => (is => 'ro', isa => 'Str');
  has DistanceUnit => (is => 'ro', isa => 'Str');
  has IsDefault => (is => 'ro', isa => 'Bool');
  has MaxVolumeLimit => (is => 'ro', isa => 'Int');
  has ProfileArn => (is => 'ro', isa => 'Str');
  has ProfileName => (is => 'ro', isa => 'Str');
  has PSTNEnabled => (is => 'ro', isa => 'Bool');
  has SetupModeDisabled => (is => 'ro', isa => 'Bool');
  has TemperatureUnit => (is => 'ro', isa => 'Str');
  has Timezone => (is => 'ro', isa => 'Str');
  has WakeWord => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateProfile');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AlexaForBusiness::UpdateProfileResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::UpdateProfile - Arguments for method UpdateProfile on L<Paws::AlexaForBusiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateProfile on the
L<Alexa For Business|Paws::AlexaForBusiness> service. Use the attributes of this class
as arguments to method UpdateProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateProfile.

=head1 SYNOPSIS

    my $a4b = Paws->service('AlexaForBusiness');
    my $UpdateProfileResponse = $a4b->UpdateProfile(
      Address           => 'MyAddress',        # OPTIONAL
      DistanceUnit      => 'METRIC',           # OPTIONAL
      IsDefault         => 1,                  # OPTIONAL
      MaxVolumeLimit    => 1,                  # OPTIONAL
      PSTNEnabled       => 1,                  # OPTIONAL
      ProfileArn        => 'MyArn',            # OPTIONAL
      ProfileName       => 'MyProfileName',    # OPTIONAL
      SetupModeDisabled => 1,                  # OPTIONAL
      TemperatureUnit   => 'FAHRENHEIT',       # OPTIONAL
      Timezone          => 'MyTimezone',       # OPTIONAL
      WakeWord          => 'ALEXA',            # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/a4b/UpdateProfile>

=head1 ATTRIBUTES


=head2 Address => Str

The updated address for the room profile.



=head2 DistanceUnit => Str

The updated distance unit for the room profile.

Valid values are: C<"METRIC">, C<"IMPERIAL">

=head2 IsDefault => Bool

Sets the profile as default if selected. If this is missing, no update
is done to the default status.



=head2 MaxVolumeLimit => Int

The updated maximum volume limit for the room profile.



=head2 ProfileArn => Str

The ARN of the room profile to update. Required.



=head2 ProfileName => Str

The updated name for the room profile.



=head2 PSTNEnabled => Bool

Whether the PSTN setting of the room profile is enabled.



=head2 SetupModeDisabled => Bool

Whether the setup mode of the profile is enabled.



=head2 TemperatureUnit => Str

The updated temperature unit for the room profile.

Valid values are: C<"FAHRENHEIT">, C<"CELSIUS">

=head2 Timezone => Str

The updated timezone for the room profile.



=head2 WakeWord => Str

The updated wake word for the room profile.

Valid values are: C<"ALEXA">, C<"AMAZON">, C<"ECHO">, C<"COMPUTER">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateProfile in L<Paws::AlexaForBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

