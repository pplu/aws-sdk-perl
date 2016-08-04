
package Paws::CognitoIdp::ConfirmDevice;
  use Moose;
  has AccessToken => (is => 'ro', isa => 'Str', required => 1);
  has DeviceKey => (is => 'ro', isa => 'Str', required => 1);
  has DeviceName => (is => 'ro', isa => 'Str');
  has DeviceSecretVerifierConfig => (is => 'ro', isa => 'Paws::CognitoIdp::DeviceSecretVerifierConfigType');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ConfirmDevice');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdp::ConfirmDeviceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::ConfirmDevice - Arguments for method ConfirmDevice on Paws::CognitoIdp

=head1 DESCRIPTION

This class represents the parameters used for calling the method ConfirmDevice on the 
Amazon Cognito Identity Provider service. Use the attributes of this class
as arguments to method ConfirmDevice.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ConfirmDevice.

As an example:

  $service_obj->ConfirmDevice(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccessToken => Str

The access token.



=head2 B<REQUIRED> DeviceKey => Str

The device key.



=head2 DeviceName => Str

The device name.



=head2 DeviceSecretVerifierConfig => L<Paws::CognitoIdp::DeviceSecretVerifierConfigType>

The configuration of the device secret verifier.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ConfirmDevice in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

