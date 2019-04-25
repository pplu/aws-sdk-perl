package Paws::IAM::SSHPublicKey;
  use Moose;
  has Fingerprint => (is => 'ro', isa => 'Str', required => 1);
  has SSHPublicKeyBody => (is => 'ro', isa => 'Str', required => 1);
  has SSHPublicKeyId => (is => 'ro', isa => 'Str', required => 1);
  has Status => (is => 'ro', isa => 'Str', required => 1);
  has UploadDate => (is => 'ro', isa => 'Str');
  has UserName => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::SSHPublicKey

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IAM::SSHPublicKey object:

  $service_obj->Method(Att1 => { Fingerprint => $value, ..., UserName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IAM::SSHPublicKey object:

  $result = $service_obj->Method(...);
  $result->Att1->Fingerprint

=head1 DESCRIPTION

Contains information about an SSH public key.

This data type is used as a response element in the GetSSHPublicKey and
UploadSSHPublicKey operations.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Fingerprint => Str

  The MD5 message digest of the SSH public key.


=head2 B<REQUIRED> SSHPublicKeyBody => Str

  The SSH public key.


=head2 B<REQUIRED> SSHPublicKeyId => Str

  The unique identifier for the SSH public key.


=head2 B<REQUIRED> Status => Str

  The status of the SSH public key. C<Active> means that the key can be
used for authentication with an AWS CodeCommit repository. C<Inactive>
means that the key cannot be used.


=head2 UploadDate => Str

  The date and time, in ISO 8601 date-time format
(http://www.iso.org/iso/iso8601), when the SSH public key was uploaded.


=head2 B<REQUIRED> UserName => Str

  The name of the IAM user associated with the SSH public key.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

