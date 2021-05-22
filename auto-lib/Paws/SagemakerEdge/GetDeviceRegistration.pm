
package Paws::SagemakerEdge::GetDeviceRegistration;
  use Moose;
  has DeviceFleetName => (is => 'ro', isa => 'Str', required => 1);
  has DeviceName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDeviceRegistration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/GetDeviceRegistration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SagemakerEdge::GetDeviceRegistrationResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SagemakerEdge::GetDeviceRegistration - Arguments for method GetDeviceRegistration on L<Paws::SagemakerEdge>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDeviceRegistration on the
L<Amazon Sagemaker Edge Manager|Paws::SagemakerEdge> service. Use the attributes of this class
as arguments to method GetDeviceRegistration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDeviceRegistration.

=head1 SYNOPSIS

    my $edge.sagemaker = Paws->service('SagemakerEdge');
    my $GetDeviceRegistrationResult = $edge . sagemaker->GetDeviceRegistration(
      DeviceFleetName => 'MyDeviceFleetName',
      DeviceName      => 'MyDeviceName',

    );

    # Results:
    my $CacheTTL           = $GetDeviceRegistrationResult->CacheTTL;
    my $DeviceRegistration = $GetDeviceRegistrationResult->DeviceRegistration;

    # Returns a L<Paws::SagemakerEdge::GetDeviceRegistrationResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/edge.sagemaker/GetDeviceRegistration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DeviceFleetName => Str

The name of the fleet that the device belongs to.



=head2 B<REQUIRED> DeviceName => Str

The unique name of the device you want to get the registration status
from.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDeviceRegistration in L<Paws::SagemakerEdge>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

