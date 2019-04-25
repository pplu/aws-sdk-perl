package Paws::CloudFront::EncryptionEntities;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::CloudFront::EncryptionEntity]', request_name => 'EncryptionEntity', traits => ['NameInRequest']);
  has Quantity => (is => 'ro', isa => 'Int', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::EncryptionEntities

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFront::EncryptionEntities object:

  $service_obj->Method(Att1 => { Items => $value, ..., Quantity => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFront::EncryptionEntities object:

  $result = $service_obj->Method(...);
  $result->Att1->Items

=head1 DESCRIPTION

Complex data type for field-level encryption profiles that includes all
of the encryption entities.

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::CloudFront::EncryptionEntity>]

  An array of field patterns in a field-level encryption content
type-profile mapping.


=head2 B<REQUIRED> Quantity => Int

  Number of field pattern items in a field-level encryption content
type-profile mapping.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

