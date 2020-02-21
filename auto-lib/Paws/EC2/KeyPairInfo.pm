package Paws::EC2::KeyPairInfo;
  use Moose;
  has KeyFingerprint => (is => 'ro', isa => 'Str', request_name => 'keyFingerprint', traits => ['NameInRequest']);
  has KeyName => (is => 'ro', isa => 'Str', request_name => 'keyName', traits => ['NameInRequest']);
  has KeyPairId => (is => 'ro', isa => 'Str', request_name => 'keyPairId', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', request_name => 'tagSet', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::KeyPairInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::KeyPairInfo object:

  $service_obj->Method(Att1 => { KeyFingerprint => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::KeyPairInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->KeyFingerprint

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 KeyFingerprint => Str

  If you used CreateKeyPair to create the key pair, this is the SHA-1
digest of the DER encoded private key. If you used ImportKeyPair to
provide AWS the public key, this is the MD5 public key fingerprint as
specified in section 4 of RFC4716.


=head2 KeyName => Str

  The name of the key pair.


=head2 KeyPairId => Str

  The ID of the key pair.


=head2 Tags => ArrayRef[L<Paws::EC2::Tag>]

  Any tags applied to the key pair.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
