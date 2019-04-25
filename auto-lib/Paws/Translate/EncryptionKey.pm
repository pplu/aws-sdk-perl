package Paws::Translate::EncryptionKey;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has Type => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Translate::EncryptionKey

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Translate::EncryptionKey object:

  $service_obj->Method(Att1 => { Id => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Translate::EncryptionKey object:

  $result = $service_obj->Method(...);
  $result->Att1->Id

=head1 DESCRIPTION

The encryption key used to encrypt the custom terminologies used by
Amazon Translate.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

  The Amazon Resource Name (ARN) of the encryption key being used to
encrypt the custom terminology.


=head2 B<REQUIRED> Type => Str

  The type of encryption key used by Amazon Translate to encrypt custom
terminologies.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Translate>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

