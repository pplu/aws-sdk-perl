
package Paws::Greengrass::CreateResourceDefinitionVersion;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Greengrass::Types qw/Greengrass_Resource/;
  has AmznClientToken => (is => 'ro', isa => Str, predicate => 1);
  has ResourceDefinitionId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Resources => (is => 'ro', isa => ArrayRef[Greengrass_Resource], predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateResourceDefinitionVersion');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/greengrass/definition/resources/{ResourceDefinitionId}/versions');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Greengrass::CreateResourceDefinitionVersionResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Resources' => {
                                'class' => 'Paws::Greengrass::Resource',
                                'type' => 'ArrayRef[Greengrass_Resource]'
                              },
               'ResourceDefinitionId' => {
                                           'type' => 'Str'
                                         },
               'AmznClientToken' => {
                                      'type' => 'Str'
                                    }
             },
  'ParamInURI' => {
                    'ResourceDefinitionId' => 'ResourceDefinitionId'
                  },
  'ParamInHeader' => {
                       'AmznClientToken' => 'X-Amzn-Client-Token'
                     },
  'IsRequired' => {
                    'ResourceDefinitionId' => 1
                  }
}
;
    return $Params_map;
  }

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
      );

    # Results:
    my $Arn = $CreateResourceDefinitionVersionResponse->Arn;
    my $CreationTimestamp =
      $CreateResourceDefinitionVersionResponse->CreationTimestamp;
    my $Id      = $CreateResourceDefinitionVersionResponse->Id;
    my $Version = $CreateResourceDefinitionVersionResponse->Version;

# Returns a L<Paws::Greengrass::CreateResourceDefinitionVersionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/greengrass/CreateResourceDefinitionVersion>

=head1 ATTRIBUTES


=head2 AmznClientToken => Str

A client token used to correlate requests and responses.



=head2 B<REQUIRED> ResourceDefinitionId => Str

The ID of the resource definition.



=head2 Resources => ArrayRef[Greengrass_Resource]

A list of resources.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateResourceDefinitionVersion in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

