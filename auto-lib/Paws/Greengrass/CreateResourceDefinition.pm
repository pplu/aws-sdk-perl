
package Paws::Greengrass::CreateResourceDefinition;
  use Moose;
  has AmznClientToken => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amzn-Client-Token');
  has InitialVersion => (is => 'ro', isa => 'Paws::Greengrass::ResourceDefinitionVersion');
  has Name => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateResourceDefinition');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/greengrass/definition/resources');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Greengrass::CreateResourceDefinitionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::CreateResourceDefinition - Arguments for method CreateResourceDefinition on L<Paws::Greengrass>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateResourceDefinition on the
L<AWS Greengrass|Paws::Greengrass> service. Use the attributes of this class
as arguments to method CreateResourceDefinition.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateResourceDefinition.

=head1 SYNOPSIS

    my $greengrass = Paws->service('Greengrass');
    my $CreateResourceDefinitionResponse =
      $greengrass->CreateResourceDefinition(
      AmznClientToken => 'My__string',    # OPTIONAL
      InitialVersion  => {
        Resources => [
          {
            Id                    => 'My__string',
            ResourceDataContainer => {
              LocalVolumeResourceData => {
                DestinationPath   => 'My__string',
                SourcePath        => 'My__string',
                GroupOwnerSetting => {
                  GroupOwner        => 'My__string',
                  AutoAddGroupOwner => 1,              # OPTIONAL
                },    # OPTIONAL
              },    # OPTIONAL
              SageMakerMachineLearningModelResourceData => {
                DestinationPath => 'My__string',
                SageMakerJobArn => 'My__string',
              },    # OPTIONAL
              LocalDeviceResourceData => {
                SourcePath        => 'My__string',
                GroupOwnerSetting => {
                  GroupOwner        => 'My__string',
                  AutoAddGroupOwner => 1,              # OPTIONAL
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
      },    # OPTIONAL
      Name => 'My__string',    # OPTIONAL
      );

    # Results:
    my $CreationTimestamp =
      $CreateResourceDefinitionResponse->CreationTimestamp;
    my $LatestVersionArn = $CreateResourceDefinitionResponse->LatestVersionArn;
    my $Id               = $CreateResourceDefinitionResponse->Id;
    my $LastUpdatedTimestamp =
      $CreateResourceDefinitionResponse->LastUpdatedTimestamp;
    my $Arn           = $CreateResourceDefinitionResponse->Arn;
    my $Name          = $CreateResourceDefinitionResponse->Name;
    my $LatestVersion = $CreateResourceDefinitionResponse->LatestVersion;

    # Returns a L<Paws::Greengrass::CreateResourceDefinitionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/greengrass/>

=head1 ATTRIBUTES


=head2 AmznClientToken => Str

A client token used to correlate requests and responses.



=head2 InitialVersion => L<Paws::Greengrass::ResourceDefinitionVersion>

Information about the initial version of the resource definition.



=head2 Name => Str

The name of the resource definition.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateResourceDefinition in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

