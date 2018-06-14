
package Paws::Greengrass::CreateResourceDefinitionVersion;
  use Moose;
  has AmznClientToken => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amzn-Client-Token');
  has ResourceDefinitionId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ResourceDefinitionId', required => 1);
  has Resources => (is => 'ro', isa => 'ArrayRef[Paws::Greengrass::Resource]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateResourceDefinitionVersion');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/greengrass/definition/resources/{ResourceDefinitionId}/versions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Greengrass::CreateResourceDefinitionVersionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::CreateResourceDefinitionVersion - Arguments for method CreateResourceDefinitionVersion on L<Paws::Greengrass>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateResourceDefinitionVersion on the
L<AWS Greengrass|Paws::Greengrass> service. Use the attributes of this class
as arguments to method CreateResourceDefinitionVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateResourceDefinitionVersion.

=head1 SYNOPSIS

    my $greengrass = Paws->service('Greengrass');
    my $CreateResourceDefinitionVersionResponse =
      $greengrass->CreateResourceDefinitionVersion(
      ResourceDefinitionId => 'My__string',
      AmznClientToken      => 'My__string',    # OPTIONAL
      Resources            => [
        {
          Id                    => 'My__string',
          ResourceDataContainer => {
            LocalVolumeResourceData => {
              DestinationPath   => 'My__string',
              SourcePath        => 'My__string',
              GroupOwnerSetting => {
                AutoAddGroupOwner => 1,              # OPTIONAL
                GroupOwner        => 'My__string',
              },    # OPTIONAL
            },    # OPTIONAL
            SageMakerMachineLearningModelResourceData => {
              DestinationPath => 'My__string',
              SageMakerJobArn => 'My__string',
            },    # OPTIONAL
            LocalDeviceResourceData => {
              SourcePath        => 'My__string',
              GroupOwnerSetting => {
                AutoAddGroupOwner => 1,              # OPTIONAL
                GroupOwner        => 'My__string',
              },    # OPTIONAL
            },    # OPTIONAL
            S3MachineLearningModelResourceData => {
              DestinationPath => 'My__string',
              S3Uri           => 'My__string',
            },    # OPTIONAL
          },    # OPTIONAL
          Name => 'My__string',
        },
        ...
      ],        # OPTIONAL
      );

    # Results:
    my $CreationTimestamp =
      $CreateResourceDefinitionVersionResponse->CreationTimestamp;
    my $Version = $CreateResourceDefinitionVersionResponse->Version;
    my $Id      = $CreateResourceDefinitionVersionResponse->Id;
    my $Arn     = $CreateResourceDefinitionVersionResponse->Arn;

# Returns a L<Paws::Greengrass::CreateResourceDefinitionVersionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/greengrass/>

=head1 ATTRIBUTES


=head2 AmznClientToken => Str

A client token used to correlate requests and responses.



=head2 B<REQUIRED> ResourceDefinitionId => Str

The ID of the resource definition.



=head2 Resources => ArrayRef[L<Paws::Greengrass::Resource>]

A list of resources.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateResourceDefinitionVersion in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

