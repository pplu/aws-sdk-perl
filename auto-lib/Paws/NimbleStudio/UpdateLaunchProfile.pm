
package Paws::NimbleStudio::UpdateLaunchProfile;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amz-Client-Token');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has LaunchProfileId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'launchProfileId', required => 1);
  has LaunchProfileProtocolVersions => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'launchProfileProtocolVersions');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has StreamConfiguration => (is => 'ro', isa => 'Paws::NimbleStudio::StreamConfigurationCreate', traits => ['NameInRequest'], request_name => 'streamConfiguration');
  has StudioComponentIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'studioComponentIds');
  has StudioId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'studioId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateLaunchProfile');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2020-08-01/studios/{studioId}/launch-profiles/{launchProfileId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NimbleStudio::UpdateLaunchProfileResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NimbleStudio::UpdateLaunchProfile - Arguments for method UpdateLaunchProfile on L<Paws::NimbleStudio>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateLaunchProfile on the
L<AmazonNimbleStudio|Paws::NimbleStudio> service. Use the attributes of this class
as arguments to method UpdateLaunchProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateLaunchProfile.

=head1 SYNOPSIS

    my $nimble = Paws->service('NimbleStudio');
    my $UpdateLaunchProfileResponse = $nimble->UpdateLaunchProfile(
      LaunchProfileId               => 'My__string',
      StudioId                      => 'My__string',
      ClientToken                   => 'MyClientToken',               # OPTIONAL
      Description                   => 'MyLaunchProfileDescription',  # OPTIONAL
      LaunchProfileProtocolVersions => [
        'MyLaunchProfileProtocolVersion', ...                         # max: 10
      ],    # OPTIONAL
      Name                => 'MyLaunchProfileName',    # OPTIONAL
      StreamConfiguration => {
        ClipboardMode    => 'ENABLED',    # values: ENABLED, DISABLED
        Ec2InstanceTypes => [
          'g4dn.xlarge',
          ... # values: g4dn.xlarge, g4dn.2xlarge, g4dn.4xlarge, g4dn.8xlarge, g4dn.12xlarge, g4dn.16xlarge
        ],    # min: 1, max: 30
        StreamingImageIds => [
          'MyStreamingImageId', ...    # max: 22
        ],    # max: 20
        MaxSessionLengthInMinutes => 1,    # min: 1, max: 690; OPTIONAL
      },    # OPTIONAL
      StudioComponentIds => [ 'My__string', ... ],    # OPTIONAL
    );

    # Results:
    my $LaunchProfile = $UpdateLaunchProfileResponse->LaunchProfile;

    # Returns a L<Paws::NimbleStudio::UpdateLaunchProfileResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/nimble/UpdateLaunchProfile>

=head1 ATTRIBUTES


=head2 ClientToken => Str

To make an idempotent API request using one of these actions, specify a
client token in the request. You should not reuse the same client token
for other API requests. If you retry a request that completed
successfully using the same client token and the same parameters, the
retry succeeds without performing any further actions. If you retry a
successful request using the same client token, but one or more of the
parameters are different, the retry fails with a ValidationException
error.



=head2 Description => Str

The description.



=head2 B<REQUIRED> LaunchProfileId => Str

The launch profile ID.



=head2 LaunchProfileProtocolVersions => ArrayRef[Str|Undef]

The version number of the protocol that is used by the launch profile.
The only valid version is "2021-03-31".



=head2 Name => Str

The name for the launch profile.



=head2 StreamConfiguration => L<Paws::NimbleStudio::StreamConfigurationCreate>

A configuration for a streaming session.



=head2 StudioComponentIds => ArrayRef[Str|Undef]

Unique identifiers for a collection of studio components that can be
used with this launch profile.



=head2 B<REQUIRED> StudioId => Str

The studio ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateLaunchProfile in L<Paws::NimbleStudio>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

