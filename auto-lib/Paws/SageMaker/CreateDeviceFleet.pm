
package Paws::SageMaker::CreateDeviceFleet;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has DeviceFleetName => (is => 'ro', isa => 'Str', required => 1);
  has EnableIotRoleAlias => (is => 'ro', isa => 'Bool');
  has OutputConfig => (is => 'ro', isa => 'Paws::SageMaker::EdgeOutputConfig', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDeviceFleet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateDeviceFleet - Arguments for method CreateDeviceFleet on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDeviceFleet on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method CreateDeviceFleet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDeviceFleet.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    $api . sagemaker->CreateDeviceFleet(
      DeviceFleetName => 'MyEntityName',
      OutputConfig    => {
        S3OutputLocation       => 'MyS3Uri',       # max: 1024
        KmsKeyId               => 'MyKmsKeyId',    # max: 2048; OPTIONAL
        PresetDeploymentConfig => 'MyString',      # OPTIONAL
        PresetDeploymentType   =>
          'GreengrassV2Component',    # values: GreengrassV2Component; OPTIONAL
      },
      Description        => 'MyDeviceFleetDescription',    # OPTIONAL
      EnableIotRoleAlias => 1,                             # OPTIONAL
      RoleArn            => 'MyRoleArn',                   # OPTIONAL
      Tags               => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/CreateDeviceFleet>

=head1 ATTRIBUTES


=head2 Description => Str

A description of the fleet.



=head2 B<REQUIRED> DeviceFleetName => Str

The name of the fleet that the device belongs to.



=head2 EnableIotRoleAlias => Bool

Whether to create an Amazon Web Services IoT Role Alias during device
fleet creation. The name of the role alias generated will match this
pattern: "SageMakerEdge-{DeviceFleetName}".

For example, if your device fleet is called "demo-fleet", the name of
the role alias will be "SageMakerEdge-demo-fleet".



=head2 B<REQUIRED> OutputConfig => L<Paws::SageMaker::EdgeOutputConfig>

The output configuration for storing sample data collected by the
fleet.



=head2 RoleArn => Str

The Amazon Resource Name (ARN) that has access to Amazon Web Services
Internet of Things (IoT).



=head2 Tags => ArrayRef[L<Paws::SageMaker::Tag>]

Creates tags for the specified fleet.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDeviceFleet in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

