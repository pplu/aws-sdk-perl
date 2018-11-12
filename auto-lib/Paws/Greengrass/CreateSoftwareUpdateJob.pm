
package Paws::Greengrass::CreateSoftwareUpdateJob;
  use Moose;
  has AmznClientToken => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amzn-Client-Token');
  has S3UrlSignerRole => (is => 'ro', isa => 'Str');
  has SoftwareToUpdate => (is => 'ro', isa => 'Str');
  has UpdateAgentLogLevel => (is => 'ro', isa => 'Str');
  has UpdateTargets => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has UpdateTargetsArchitecture => (is => 'ro', isa => 'Str');
  has UpdateTargetsOperatingSystem => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSoftwareUpdateJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/greengrass/updates');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Greengrass::CreateSoftwareUpdateJobResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::CreateSoftwareUpdateJob - Arguments for method CreateSoftwareUpdateJob on L<Paws::Greengrass>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateSoftwareUpdateJob on the
L<AWS Greengrass|Paws::Greengrass> service. Use the attributes of this class
as arguments to method CreateSoftwareUpdateJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateSoftwareUpdateJob.

=head1 SYNOPSIS

    my $greengrass = Paws->service('Greengrass');
    my $CreateSoftwareUpdateJobResponse = $greengrass->CreateSoftwareUpdateJob(
      AmznClientToken              => 'My__string',             # OPTIONAL
      S3UrlSignerRole              => 'MyS3UrlSignerRole',      # OPTIONAL
      SoftwareToUpdate             => 'core',                   # OPTIONAL
      UpdateAgentLogLevel          => 'NONE',                   # OPTIONAL
      UpdateTargets                => [ 'My__string', ... ],    # OPTIONAL
      UpdateTargetsArchitecture    => 'armv7l',                 # OPTIONAL
      UpdateTargetsOperatingSystem => 'ubuntu',                 # OPTIONAL
    );

    # Results:
    my $IotJobArn = $CreateSoftwareUpdateJobResponse->IotJobArn;
    my $IotJobId  = $CreateSoftwareUpdateJobResponse->IotJobId;

    # Returns a L<Paws::Greengrass::CreateSoftwareUpdateJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/greengrass/CreateSoftwareUpdateJob>

=head1 ATTRIBUTES


=head2 AmznClientToken => Str

A client token used to correlate requests and responses.



=head2 S3UrlSignerRole => Str





=head2 SoftwareToUpdate => Str



Valid values are: C<"core">, C<"ota_agent">

=head2 UpdateAgentLogLevel => Str



Valid values are: C<"NONE">, C<"TRACE">, C<"DEBUG">, C<"VERBOSE">, C<"INFO">, C<"WARN">, C<"ERROR">, C<"FATAL">

=head2 UpdateTargets => ArrayRef[Str|Undef]





=head2 UpdateTargetsArchitecture => Str



Valid values are: C<"armv7l">, C<"x86_64">, C<"aarch64">

=head2 UpdateTargetsOperatingSystem => Str



Valid values are: C<"ubuntu">, C<"raspbian">, C<"amazon_linux">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateSoftwareUpdateJob in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

