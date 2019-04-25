package Paws::IAM::MFADevice;
  use Moose;
  has EnableDate => (is => 'ro', isa => 'Str', required => 1);
  has SerialNumber => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::MFADevice

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IAM::MFADevice object:

  $service_obj->Method(Att1 => { EnableDate => $value, ..., UserName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IAM::MFADevice object:

  $result = $service_obj->Method(...);
  $result->Att1->EnableDate

=head1 DESCRIPTION

Contains information about an MFA device.

This data type is used as a response element in the ListMFADevices
operation.

=head1 ATTRIBUTES


=head2 B<REQUIRED> EnableDate => Str

  The date when the MFA device was enabled for the user.


=head2 B<REQUIRED> SerialNumber => Str

  The serial number that uniquely identifies the MFA device. For virtual
MFA devices, the serial number is the device ARN.


=head2 B<REQUIRED> UserName => Str

  The user with whom the MFA device is associated.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

