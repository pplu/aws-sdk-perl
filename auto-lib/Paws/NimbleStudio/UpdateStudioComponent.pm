
package Paws::NimbleStudio::UpdateStudioComponent;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amz-Client-Token');
  has Configuration => (is => 'ro', isa => 'Paws::NimbleStudio::StudioComponentConfiguration', traits => ['NameInRequest'], request_name => 'configuration');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Ec2SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'ec2SecurityGroupIds');
  has InitializationScripts => (is => 'ro', isa => 'ArrayRef[Paws::NimbleStudio::StudioComponentInitializationScript]', traits => ['NameInRequest'], request_name => 'initializationScripts');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has ScriptParameters => (is => 'ro', isa => 'ArrayRef[Paws::NimbleStudio::ScriptParameterKeyValue]', traits => ['NameInRequest'], request_name => 'scriptParameters');
  has StudioComponentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'studioComponentId', required => 1);
  has StudioId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'studioId', required => 1);
  has Subtype => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'subtype');
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateStudioComponent');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2020-08-01/studios/{studioId}/studio-components/{studioComponentId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NimbleStudio::UpdateStudioComponentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NimbleStudio::UpdateStudioComponent - Arguments for method UpdateStudioComponent on L<Paws::NimbleStudio>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateStudioComponent on the
L<AmazonNimbleStudio|Paws::NimbleStudio> service. Use the attributes of this class
as arguments to method UpdateStudioComponent.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateStudioComponent.

=head1 SYNOPSIS

    my $nimble = Paws->service('NimbleStudio');
    my $UpdateStudioComponentResponse = $nimble->UpdateStudioComponent(
      StudioComponentId => 'My__string',
      StudioId          => 'My__string',
      ClientToken       => 'MyClientToken',    # OPTIONAL
      Configuration     => {
        ActiveDirectoryConfiguration => {
          ComputerAttributes => [
            {
              Name => 'MyActiveDirectoryComputerAttributeName'
              ,    # min: 1, max: 40; OPTIONAL
              Value => 'MyActiveDirectoryComputerAttributeValue'
              ,    # min: 1, max: 64; OPTIONAL
            },
            ...
          ],    # max: 50; OPTIONAL
          DirectoryId                         => 'MyDirectoryId',    # OPTIONAL
          OrganizationalUnitDistinguishedName =>
            'MyActiveDirectoryOrganizationalUnitDistinguishedName'
          ,    # min: 1, max: 2000; OPTIONAL
        },    # OPTIONAL
        ComputeFarmConfiguration => {
          ActiveDirectoryUser => 'My__string',
          Endpoint            => 'My__string',
        },    # OPTIONAL
        LicenseServiceConfiguration => { Endpoint => 'My__string', }, # OPTIONAL
        SharedFileSystemConfiguration => {
          Endpoint          => 'My__string',
          FileSystemId      => 'My__string',
          LinuxMountPoint   => 'MyLinuxMountPoint',      # max: 128; OPTIONAL
          ShareName         => 'My__string',
          WindowsMountDrive => 'MyWindowsMountDrive',    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      Description           => 'MyStudioComponentDescription',    # OPTIONAL
      Ec2SecurityGroupIds   => [ 'MySecurityGroupId', ... ],      # OPTIONAL
      InitializationScripts => [
        {
          LaunchProfileProtocolVersion =>
            'MyLaunchProfileProtocolVersion',    # max: 10; OPTIONAL
          Platform   => 'LINUX',    # values: LINUX, WINDOWS; OPTIONAL
          RunContext => 'SYSTEM_INITIALIZATION'
          ,    # values: SYSTEM_INITIALIZATION, USER_INITIALIZATION; OPTIONAL
          Script => 'MyStudioComponentInitializationScriptContent'
          ,    # min: 1, max: 5120; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      Name             => 'MyStudioComponentName',    # OPTIONAL
      ScriptParameters => [
        {
          Key   => 'MyScriptParameterKey',      # min: 1, max: 64; OPTIONAL
          Value => 'MyScriptParameterValue',    # min: 1, max: 256; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      Subtype => 'AWS_MANAGED_MICROSOFT_AD',    # OPTIONAL
      Type    => 'ACTIVE_DIRECTORY',            # OPTIONAL
    );

    # Results:
    my $StudioComponent = $UpdateStudioComponentResponse->StudioComponent;

    # Returns a L<Paws::NimbleStudio::UpdateStudioComponentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/nimble/UpdateStudioComponent>

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



=head2 Configuration => L<Paws::NimbleStudio::StudioComponentConfiguration>

The configuration of the studio component, based on component type.



=head2 Description => Str

The description.



=head2 Ec2SecurityGroupIds => ArrayRef[Str|Undef]

The EC2 security groups that control access to the studio component.



=head2 InitializationScripts => ArrayRef[L<Paws::NimbleStudio::StudioComponentInitializationScript>]

Initialization scripts for studio components.



=head2 Name => Str

The name for the studio component.



=head2 ScriptParameters => ArrayRef[L<Paws::NimbleStudio::ScriptParameterKeyValue>]

Parameters for the studio component scripts.



=head2 B<REQUIRED> StudioComponentId => Str

The studio component ID.



=head2 B<REQUIRED> StudioId => Str

The studio ID.



=head2 Subtype => Str

The specific subtype of a studio component.

Valid values are: C<"AWS_MANAGED_MICROSOFT_AD">, C<"AMAZON_FSX_FOR_WINDOWS">, C<"AMAZON_FSX_FOR_LUSTRE">, C<"CUSTOM">

=head2 Type => Str

The type of the studio component.

Valid values are: C<"ACTIVE_DIRECTORY">, C<"SHARED_FILE_SYSTEM">, C<"COMPUTE_FARM">, C<"LICENSE_SERVICE">, C<"CUSTOM">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateStudioComponent in L<Paws::NimbleStudio>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

