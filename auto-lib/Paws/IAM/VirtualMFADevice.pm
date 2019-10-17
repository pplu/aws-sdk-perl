package Paws::IAM::VirtualMFADevice;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IAM::Types qw/IAM_User/;
  has Base32StringSeed => (is => 'ro', isa => Str);
  has EnableDate => (is => 'ro', isa => Str);
  has QRCodePNG => (is => 'ro', isa => Str);
  has SerialNumber => (is => 'ro', isa => Str, required => 1);
  has User => (is => 'ro', isa => IAM_User);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'EnableDate' => {
                                 'type' => 'Str'
                               },
               'SerialNumber' => {
                                   'type' => 'Str'
                                 },
               'Base32StringSeed' => {
                                       'type' => 'Str'
                                     },
               'User' => {
                           'class' => 'Paws::IAM::User',
                           'type' => 'IAM_User'
                         },
               'QRCodePNG' => {
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

Paws::IAM::VirtualMFADevice

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IAM::VirtualMFADevice object:

  $service_obj->Method(Att1 => { Base32StringSeed => $value, ..., User => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IAM::VirtualMFADevice object:

  $result = $service_obj->Method(...);
  $result->Att1->Base32StringSeed

=head1 DESCRIPTION

Contains information about a virtual MFA device.

=head1 ATTRIBUTES


=head2 Base32StringSeed => Str

  The base32 seed defined as specified in RFC3548
(https://tools.ietf.org/html/rfc3548.txt). The C<Base32StringSeed> is
base64-encoded.


=head2 EnableDate => Str

  The date and time on which the virtual MFA device was enabled.


=head2 QRCodePNG => Str

  A QR code PNG image that encodes
C<otpauth://totp/$virtualMFADeviceName@$AccountName?secret=$Base32String>
where C<$virtualMFADeviceName> is one of the create call arguments.
C<AccountName> is the user name if set (otherwise, the account ID
otherwise), and C<Base32String> is the seed in base32 format. The
C<Base32String> value is base64-encoded.


=head2 B<REQUIRED> SerialNumber => Str

  The serial number associated with C<VirtualMFADevice>.


=head2 User => IAM_User

  The IAM user associated with this virtual MFA device.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

