package Paws::Glue::S3Encryption;
  use Moose;
  has KmsKeyArn => (is => 'ro', isa => 'Str');
  has S3EncryptionMode => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::S3Encryption

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::S3Encryption object:

  $service_obj->Method(Att1 => { KmsKeyArn => $value, ..., S3EncryptionMode => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::S3Encryption object:

  $result = $service_obj->Method(...);
  $result->Att1->KmsKeyArn

=head1 DESCRIPTION

Specifies how S3 data should be encrypted.

=head1 ATTRIBUTES


=head2 KmsKeyArn => Str

  The AWS ARN of the KMS key to be used to encrypt the data.


=head2 S3EncryptionMode => Str

  The encryption mode to use for S3 data.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

