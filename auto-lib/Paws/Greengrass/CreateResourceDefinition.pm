
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
            Name                  => 'My__string',
            ResourceDataContainer => {
              LocalDeviceResourceData => {
                GroupOwnerSetting => {
                  AutoAddGroupOwner => 1,              # OPTIONAL
                  GroupOwner        => 'My__string',
                },    # OPTIONAL
                SourcePath => 'My__string',
              },    # OPTIONAL
              LocalVolumeResourceData => {
                DestinationPath   => 'My__string',
                GroupOwnerSetting => {
                  AutoAddGroupOwner => 1,              # OPTIONAL
                  GroupOwner        => 'My__string',
                },    # OPTIONAL
                SourcePath => 'My__string',
              },    # OPTIONAL
              S3MachineLearningModelResourceData => {
                DestinationPath => 'My__string',
                S3Uri           => 'My__string',
              },    # OPTIONAL
              SageMakerMachineLearningModelResourceData => {
                DestinationPath => 'My__string',
                SageMakerJobArn => 'My__string',
              },    # OPTIONAL
              SecretsManagerSecretResourceData => {
                ARN                               => 'My__string',
                AdditionalStagingLabelsToDownload => [ 'My__string', ... ]
                ,    # OPTIONAL
              },    # OPTIONAL
            },    # OPTIONAL
          },
          ...
        ],        # OPTIONAL
      },    # OPTIONAL
      Name => 'My__string',    # OPTIONAL
      );

    # Results:
    my $Arn = $CreateResourceDefinitionResponse->Arn;
    my $CreationTimestamp =
      $CreateResourceDefinitionResponse->CreationTimestamp;
    my $Id = $CreateResourceDefinitionResponse->Id;
    my $LastUpdatedTimestamp =
      $CreateResourceDefinitionResponse->LastUpdatedTimestamp;
    my $LatestVersion    = $CreateResourceDefinitionResponse->LatestVersion;
    my $LatestVersionArn = $CreateResourceDefinitionResponse->LatestVersionArn;
    my $Name             = $CreateResourceDefinitionResponse->Name;

    # Returns a L<Paws::Greengrass::CreateResourceDefinitionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/greengrass/CreateResourceDefinition>

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

