package Paws::Glue::EncryptionAtRest;
  use Moose;
  has CatalogEncryptionMode => (is => 'ro', isa => 'Str', required => 1);
  has SseAwsKmsKeyId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::EncryptionAtRest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::EncryptionAtRest object:

  $service_obj->Method(Att1 => { CatalogEncryptionMode => $value, ..., SseAwsKmsKeyId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::EncryptionAtRest object:

  $result = $service_obj->Method(...);
  $result->Att1->CatalogEncryptionMode

=head1 DESCRIPTION

Specifies encryption-at-rest configuration for the Data Catalog.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CatalogEncryptionMode => Str

  The encryption-at-rest mode for encrypting Data Catalog data.


=head2 SseAwsKmsKeyId => Str

  The ID of the AWS KMS key to use for encryption at rest.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

