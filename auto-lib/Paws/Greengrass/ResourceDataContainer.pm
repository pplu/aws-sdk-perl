# Generated from default/object.tt
package Paws::Greengrass::ResourceDataContainer;
  use Moo;
  use Types::Standard qw//;
  use Paws::Greengrass::Types qw/Greengrass_LocalVolumeResourceData Greengrass_SageMakerMachineLearningModelResourceData Greengrass_LocalDeviceResourceData Greengrass_SecretsManagerSecretResourceData Greengrass_S3MachineLearningModelResourceData/;
  has LocalDeviceResourceData => (is => 'ro', isa => Greengrass_LocalDeviceResourceData);
  has LocalVolumeResourceData => (is => 'ro', isa => Greengrass_LocalVolumeResourceData);
  has S3MachineLearningModelResourceData => (is => 'ro', isa => Greengrass_S3MachineLearningModelResourceData);
  has SageMakerMachineLearningModelResourceData => (is => 'ro', isa => Greengrass_SageMakerMachineLearningModelResourceData);
  has SecretsManagerSecretResourceData => (is => 'ro', isa => Greengrass_SecretsManagerSecretResourceData);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'LocalVolumeResourceData' => {
                                              'class' => 'Paws::Greengrass::LocalVolumeResourceData',
                                              'type' => 'Greengrass_LocalVolumeResourceData'
                                            },
               'SecretsManagerSecretResourceData' => {
                                                       'class' => 'Paws::Greengrass::SecretsManagerSecretResourceData',
                                                       'type' => 'Greengrass_SecretsManagerSecretResourceData'
                                                     },
               'SageMakerMachineLearningModelResourceData' => {
                                                                'class' => 'Paws::Greengrass::SageMakerMachineLearningModelResourceData',
                                                                'type' => 'Greengrass_SageMakerMachineLearningModelResourceData'
                                                              },
               'S3MachineLearningModelResourceData' => {
                                                         'class' => 'Paws::Greengrass::S3MachineLearningModelResourceData',
                                                         'type' => 'Greengrass_S3MachineLearningModelResourceData'
                                                       },
               'LocalDeviceResourceData' => {
                                              'class' => 'Paws::Greengrass::LocalDeviceResourceData',
                                              'type' => 'Greengrass_LocalDeviceResourceData'
                                            }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::ResourceDataContainer

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Greengrass::ResourceDataContainer object:

  $service_obj->Method(Att1 => { LocalDeviceResourceData => $value, ..., SecretsManagerSecretResourceData => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Greengrass::ResourceDataContainer object:

  $result = $service_obj->Method(...);
  $result->Att1->LocalDeviceResourceData

=head1 DESCRIPTION

A container for resource data. The container takes only one of the
following supported resource data types: ''LocalDeviceResourceData'',
''LocalVolumeResourceData'',
''SageMakerMachineLearningModelResourceData'',
''S3MachineLearningModelResourceData'',
''SecretsManagerSecretResourceData''.

=head1 ATTRIBUTES


=head2 LocalDeviceResourceData => Greengrass_LocalDeviceResourceData

  Attributes that define the local device resource.


=head2 LocalVolumeResourceData => Greengrass_LocalVolumeResourceData

  Attributes that define the local volume resource.


=head2 S3MachineLearningModelResourceData => Greengrass_S3MachineLearningModelResourceData

  Attributes that define an Amazon S3 machine learning resource.


=head2 SageMakerMachineLearningModelResourceData => Greengrass_SageMakerMachineLearningModelResourceData

  Attributes that define an Amazon SageMaker machine learning resource.


=head2 SecretsManagerSecretResourceData => Greengrass_SecretsManagerSecretResourceData

  Attributes that define a secret resource, which references a secret
from AWS Secrets Manager.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

