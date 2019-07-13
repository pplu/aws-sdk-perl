
package Paws::AlexaForBusiness::CreateProfile;
  use Moose;
  has Address => (is => 'ro', isa => 'Str', required => 1);
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has DistanceUnit => (is => 'ro', isa => 'Str', required => 1);
  has MaxVolumeLimit => (is => 'ro', isa => 'Int');
  has ProfileName => (is => 'ro', isa => 'Str', required => 1);
  has PSTNEnabled => (is => 'ro', isa => 'Bool');
  has SetupModeDisabled => (is => 'ro', isa => 'Bool');
  has TemperatureUnit => (is => 'ro', isa => 'Str', required => 1);
  has Timezone => (is => 'ro', isa => 'Str', required => 1);
  has WakeWord => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateProfile');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AlexaForBusiness::CreateProfileResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::CreateProfile - Arguments for method CreateProfile on L<Paws::AlexaForBusiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateProfile on the
L<Alexa For Business|Paws::AlexaForBusiness> service. Use the attributes of this class
as arguments to method CreateProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateProfile.

=head1 SYNOPSIS

    my $a4b = Paws->service('AlexaForBusiness');
    my $CreateProfileResponse = $a4b->CreateProfile(
      Address            => 'MyAddress',
      DistanceUnit       => 'METRIC',
      ProfileName        => 'MyProfileName',
      TemperatureUnit    => 'FAHRENHEIT',
      Timezone           => 'MyTimezone',
      WakeWord           => 'ALEXA',
      ClientRequestToken => 'MyClientRequestToken',    # OPTIONAL
      MaxVolumeLimit     => 1,                         # OPTIONAL
      PSTNEnabled        => 1,                         # OPTIONAL
      SetupModeDisabled  => 1,                         # OPTIONAL
    );

    # Results:
    my $ProfileArn = $CreateProfileResponse->ProfileArn;

    # Returns a L<Paws::AlexaForBusiness::CreateProfileResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/a4b/CreateProfile>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Address => Str

The valid address for the room.



=head2 ClientRequestToken => Str

The user-specified token that is used during the creation of a profile.



=head2 B<REQUIRED> DistanceUnit => Str

The distance unit to be used by devices in the profile.

Valid values are: C<"METRIC">, C<"IMPERIAL">

=head2 MaxVolumeLimit => Int

The maximum volume limit for a room profile.



=head2 B<REQUIRED> ProfileName => Str

The name of a room profile.



=head2 PSTNEnabled => Bool

Whether PSTN calling is enabled.



=head2 SetupModeDisabled => Bool

Whether room profile setup is enabled.



=head2 B<REQUIRED> TemperatureUnit => Str

The temperature unit to be used by devices in the profile.

Valid values are: C<"FAHRENHEIT">, C<"CELSIUS">

=head2 B<REQUIRED> Timezone => Str

The time zone used by a room profile.



=head2 B<REQUIRED> WakeWord => Str

A wake word for Alexa, Echo, Amazon, or a computer.

Valid values are: C<"ALEXA">, C<"AMAZON">, C<"ECHO">, C<"COMPUTER">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateProfile in L<Paws::AlexaForBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

