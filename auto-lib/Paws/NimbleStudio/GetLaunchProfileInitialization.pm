
package Paws::NimbleStudio::GetLaunchProfileInitialization;
  use Moose;
  has LaunchProfileId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'launchProfileId', required => 1);
  has LaunchProfileProtocolVersions => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'launchProfileProtocolVersions', required => 1);
  has LaunchPurpose => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'launchPurpose', required => 1);
  has Platform => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'platform', required => 1);
  has StudioId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'studioId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetLaunchProfileInitialization');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2020-08-01/studios/{studioId}/launch-profiles/{launchProfileId}/init');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NimbleStudio::GetLaunchProfileInitializationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NimbleStudio::GetLaunchProfileInitialization - Arguments for method GetLaunchProfileInitialization on L<Paws::NimbleStudio>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetLaunchProfileInitialization on the
L<AmazonNimbleStudio|Paws::NimbleStudio> service. Use the attributes of this class
as arguments to method GetLaunchProfileInitialization.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetLaunchProfileInitialization.

=head1 SYNOPSIS

    my $nimble = Paws->service('NimbleStudio');
    my $GetLaunchProfileInitializationResponse =
      $nimble->GetLaunchProfileInitialization(
      LaunchProfileId               => 'My__string',
      LaunchProfileProtocolVersions => [ 'My__string', ... ],
      LaunchPurpose                 => 'My__string',
      Platform                      => 'My__string',
      StudioId                      => 'My__string',

      );

    # Results:
    my $LaunchProfileInitialization =
      $GetLaunchProfileInitializationResponse->LaunchProfileInitialization;

# Returns a L<Paws::NimbleStudio::GetLaunchProfileInitializationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/nimble/GetLaunchProfileInitialization>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LaunchProfileId => Str

The launch profile ID.



=head2 B<REQUIRED> LaunchProfileProtocolVersions => ArrayRef[Str|Undef]

A collection of launch profile protocol versions.



=head2 B<REQUIRED> LaunchPurpose => Str

The launch purpose.



=head2 B<REQUIRED> Platform => Str

The platform.



=head2 B<REQUIRED> StudioId => Str

The studio ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetLaunchProfileInitialization in L<Paws::NimbleStudio>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

