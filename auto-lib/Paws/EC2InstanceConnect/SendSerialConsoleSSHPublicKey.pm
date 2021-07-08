
package Paws::EC2InstanceConnect::SendSerialConsoleSSHPublicKey;
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
  has SerialPort => (is => 'ro', isa => 'Int');
  has SSHPublicKey => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SendSerialConsoleSSHPublicKey');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2InstanceConnect::SendSerialConsoleSSHPublicKeyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2InstanceConnect::SendSerialConsoleSSHPublicKey - Arguments for method SendSerialConsoleSSHPublicKey on L<Paws::EC2InstanceConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SendSerialConsoleSSHPublicKey on the
L<AWS EC2 Instance Connect|Paws::EC2InstanceConnect> service. Use the attributes of this class
as arguments to method SendSerialConsoleSSHPublicKey.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SendSerialConsoleSSHPublicKey.

=head1 SYNOPSIS

    my $ec2-instance-connect = Paws->service('EC2InstanceConnect');
    my $SendSerialConsoleSSHPublicKeyResponse =
      $ec2 -instance-connect->SendSerialConsoleSSHPublicKey(
      InstanceId   => 'MyInstanceId',
      SSHPublicKey => 'MySSHPublicKey',
      SerialPort   => 1,                  # OPTIONAL
      );

    # Results:
    my $RequestId = $SendSerialConsoleSSHPublicKeyResponse->RequestId;
    my $Success   = $SendSerialConsoleSSHPublicKeyResponse->Success;

# Returns a L<Paws::EC2InstanceConnect::SendSerialConsoleSSHPublicKeyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2-instance-connect/SendSerialConsoleSSHPublicKey>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceId => Str

The ID of the EC2 instance.



=head2 SerialPort => Int

The serial port of the EC2 instance. Currently only port 0 is
supported.

Default: 0



=head2 B<REQUIRED> SSHPublicKey => Str

The public key material. To use the public key, you must have the
matching private key. For information about the supported key formats
and lengths, see Requirements for key pairs
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html#how-to-generate-your-own-key-and-import-it-to-aws)
in the I<Amazon EC2 User Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SendSerialConsoleSSHPublicKey in L<Paws::EC2InstanceConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

