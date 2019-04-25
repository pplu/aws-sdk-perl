package Paws::XRay::EncryptionConfig;
  use Moose;
  has KeyId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::XRay::EncryptionConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::XRay::EncryptionConfig object:

  $service_obj->Method(Att1 => { KeyId => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::XRay::EncryptionConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->KeyId

=head1 DESCRIPTION

A configuration document that specifies encryption configuration
settings.

=head1 ATTRIBUTES


=head2 KeyId => Str

  The ID of the customer master key (CMK) used for encryption, if
applicable.


=head2 Status => Str

  The encryption status. While the status is C<UPDATING>, X-Ray may
encrypt data with a combination of the new and old settings.


=head2 Type => Str

  The type of encryption. Set to C<KMS> for encryption with CMKs. Set to
C<NONE> for default encryption.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::XRay>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

