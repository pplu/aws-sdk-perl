
package Paws::SageMaker::RegisterDevices;
  use Moose;
  has DeviceFleetName => (is => 'ro', isa => 'Str', required => 1);
  has Devices => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::Device]', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterDevices');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::RegisterDevices - Arguments for method RegisterDevices on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RegisterDevices on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method RegisterDevices.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RegisterDevices.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    $api . sagemaker->RegisterDevices(
      DeviceFleetName => 'MyEntityName',
      Devices         => [
        {
          DeviceName   => 'MyDeviceName',           # min: 1, max: 63
          Description  => 'MyDeviceDescription',    # min: 1, max: 40; OPTIONAL
          IotThingName => 'MyThingName',            # max: 128; OPTIONAL
        },
        ...
      ],
      Tags => [
        {
          Key   => 'MyTagKey',                      # min: 1, max: 128
          Value => 'MyTagValue',                    # max: 256

        },
        ...
      ],                                            # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/RegisterDevices>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DeviceFleetName => Str

The name of the fleet.



=head2 B<REQUIRED> Devices => ArrayRef[L<Paws::SageMaker::Device>]

A list of devices to register with SageMaker Edge Manager.



=head2 Tags => ArrayRef[L<Paws::SageMaker::Tag>]

The tags associated with devices.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RegisterDevices in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

