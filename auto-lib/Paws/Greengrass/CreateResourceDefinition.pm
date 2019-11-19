
package Paws::Greengrass::CreateResourceDefinition;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Greengrass::Types qw/Greengrass_ResourceDefinitionVersion Greengrass_Tags/;
  has AmznClientToken => (is => 'ro', isa => Str, predicate => 1);
  has InitialVersion => (is => 'ro', isa => Greengrass_ResourceDefinitionVersion, predicate => 1);
  has Name => (is => 'ro', isa => Str, predicate => 1);
  has Tags => (is => 'ro', isa => Greengrass_Tags, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateResourceDefinition');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/greengrass/definition/resources');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Greengrass::CreateResourceDefinitionResponse');

    sub params_map {
    our $Params_map ||= {
  'ParamInHeader' => {
                       'AmznClientToken' => 'X-Amzn-Client-Token'
                     },
  'NameInRequest' => {
                       'Tags' => 'tags'
                     },
  'types' => {
               'InitialVersion' => {
                                     'class' => 'Paws::Greengrass::ResourceDefinitionVersion',
                                     'type' => 'Greengrass_ResourceDefinitionVersion'
                                   },
               'Tags' => {
                           'class' => 'Paws::Greengrass::Tags',
                           'type' => 'Greengrass_Tags'
                         },
               'AmznClientToken' => {
                                      'type' => 'Str'
                                    },
               'Name' => {
                           'type' => 'Str'
                         }
             }
}
;
    return $Params_map;
  }

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
            },

          },
          ...
        ],          # OPTIONAL
      },    # OPTIONAL
      Name => 'My__string',                         # OPTIONAL
      Tags => { 'My__string' => 'My__string', },    # OPTIONAL
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



=head2 InitialVersion => Greengrass_ResourceDefinitionVersion

Information about the initial version of the resource definition.



=head2 Name => Str

The name of the resource definition.



=head2 Tags => Greengrass_Tags

Tag(s) to add to the new resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateResourceDefinition in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

