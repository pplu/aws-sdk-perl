package Paws::MediaPackage::CmafEncryption;
  use Moose;
  has KeyRotationIntervalSeconds => (is => 'ro', isa => 'Int', request_name => 'keyRotationIntervalSeconds', traits => ['NameInRequest']);
  has SpekeKeyProvider => (is => 'ro', isa => 'Paws::MediaPackage::SpekeKeyProvider', request_name => 'spekeKeyProvider', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackage::CmafEncryption

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaPackage::CmafEncryption object:

  $service_obj->Method(Att1 => { KeyRotationIntervalSeconds => $value, ..., SpekeKeyProvider => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaPackage::CmafEncryption object:

  $result = $service_obj->Method(...);
  $result->Att1->KeyRotationIntervalSeconds

=head1 DESCRIPTION

A Common Media Application Format (CMAF) encryption configuration.

=head1 ATTRIBUTES


=head2 KeyRotationIntervalSeconds => Int

  Time (in seconds) between each encryption key rotation.


=head2 B<REQUIRED> SpekeKeyProvider => L<Paws::MediaPackage::SpekeKeyProvider>

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaPackage>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

