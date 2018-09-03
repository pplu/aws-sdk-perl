package Paws::Signer::SignedObject;
  use Moose;
  has S3 => (is => 'ro', isa => 'Paws::Signer::S3SignedObject', request_name => 's3', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Signer::SignedObject

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Signer::SignedObject object:

  $service_obj->Method(Att1 => { S3 => $value, ..., S3 => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Signer::SignedObject object:

  $result = $service_obj->Method(...);
  $result->Att1->S3

=head1 DESCRIPTION

Points to an C<S3SignedObject> object that contains information about
your signed code image.

=head1 ATTRIBUTES


=head2 S3 => L<Paws::Signer::S3SignedObject>

  The C<S3SignedObject>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Signer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

