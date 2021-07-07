
package Paws::GreengrassV2::CreateComponentVersion;
  use Moose;
  has InlineRecipe => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'inlineRecipe');
  has LambdaFunction => (is => 'ro', isa => 'Paws::GreengrassV2::LambdaFunctionRecipeSource', traits => ['NameInRequest'], request_name => 'lambdaFunction');
  has Tags => (is => 'ro', isa => 'Paws::GreengrassV2::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateComponentVersion');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/greengrass/v2/createComponentVersion');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GreengrassV2::CreateComponentVersionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GreengrassV2::CreateComponentVersion - Arguments for method CreateComponentVersion on L<Paws::GreengrassV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateComponentVersion on the
L<AWS IoT Greengrass V2|Paws::GreengrassV2> service. Use the attributes of this class
as arguments to method CreateComponentVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateComponentVersion.

=head1 SYNOPSIS

    my $greengrass = Paws->service('GreengrassV2');
    my $CreateComponentVersionResponse = $greengrass->CreateComponentVersion(
      InlineRecipe   => 'BlobRecipeBlob',    # OPTIONAL
      LambdaFunction => {
        LambdaArn             => 'MyLambdaFunctionARNWithVersionNumber',
        ComponentDependencies => {
          'MyNonEmptyString' => {
            DependencyType     => 'HARD',    # values: HARD, SOFT; OPTIONAL
            VersionRequirement => 'MyNonEmptyString',    # min: 1
          },    # key: min: 1
        },    # OPTIONAL
        ComponentLambdaParameters => {
          EnvironmentVariables => {
            'MyNonEmptyString' => 'MyString',    # key: min: 1
          },    # OPTIONAL
          EventSources => [
            {
              Topic => 'MyTopicString',
              Type  => 'PUB_SUB',         # values: PUB_SUB, IOT_CORE

            },
            ...
          ],    # OPTIONAL
          ExecArgs                 => [ 'MyLambdaExecArg', ... ],    # OPTIONAL
          InputPayloadEncodingType => 'json',   # values: json, binary; OPTIONAL
          LinuxProcessParams       => {
            ContainerParams => {
              Devices => [
                {
                  Path          => 'MyFileSystemPath',
                  AddGroupOwner => 1,                 # OPTIONAL
                  Permission    => 'ro',              # values: ro, rw; OPTIONAL
                },
                ...
              ],    # OPTIONAL
              MemorySizeInKB => 1,    # OPTIONAL
              MountROSysfs   => 1,    # OPTIONAL
              Volumes        => [
                {
                  DestinationPath => 'MyFileSystemPath',
                  SourcePath      => 'MyFileSystemPath',
                  AddGroupOwner   => 1,                    # OPTIONAL
                  Permission      => 'ro',    # values: ro, rw; OPTIONAL
                },
                ...
              ],    # OPTIONAL
            },    # OPTIONAL
            IsolationMode => 'GreengrassContainer'
            ,     # values: GreengrassContainer, NoContainer; OPTIONAL
          },    # OPTIONAL
          MaxIdleTimeInSeconds   => 1,    # OPTIONAL
          MaxInstancesCount      => 1,    # OPTIONAL
          MaxQueueSize           => 1,    # OPTIONAL
          Pinned                 => 1,    # OPTIONAL
          StatusTimeoutInSeconds => 1,    # OPTIONAL
          TimeoutInSeconds       => 1,    # OPTIONAL
        },    # OPTIONAL
        ComponentName => 'MyComponentNameString',   # min: 1, max: 128; OPTIONAL
        ComponentPlatforms => [
          {
            Attributes => {
              'MyNonEmptyString' =>
                'MyNonEmptyString',    # key: min: 1, value: min: 1
            },    # OPTIONAL
            Name => 'MyNonEmptyString',    # min: 1
          },
          ...
        ],    # OPTIONAL
        ComponentVersion =>
          'MyComponentVersionString',    # min: 1, max: 64; OPTIONAL
      },    # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Arn               = $CreateComponentVersionResponse->Arn;
    my $ComponentName     = $CreateComponentVersionResponse->ComponentName;
    my $ComponentVersion  = $CreateComponentVersionResponse->ComponentVersion;
    my $CreationTimestamp = $CreateComponentVersionResponse->CreationTimestamp;
    my $Status            = $CreateComponentVersionResponse->Status;

    # Returns a L<Paws::GreengrassV2::CreateComponentVersionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/greengrass/CreateComponentVersion>

=head1 ATTRIBUTES


=head2 InlineRecipe => Str

The recipe to use to create the component. The recipe defines the
component's metadata, parameters, dependencies, lifecycle, artifacts,
and platform compatibility.

You must specify either C<inlineRecipe> or C<lambdaFunction>.



=head2 LambdaFunction => L<Paws::GreengrassV2::LambdaFunctionRecipeSource>

The parameters to create a component from a Lambda function.

You must specify either C<inlineRecipe> or C<lambdaFunction>.



=head2 Tags => L<Paws::GreengrassV2::TagMap>

A list of key-value pairs that contain metadata for the resource. For
more information, see Tag your resources
(https://docs.aws.amazon.com/greengrass/v2/developerguide/tag-resources.html)
in the I<AWS IoT Greengrass V2 Developer Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateComponentVersion in L<Paws::GreengrassV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

