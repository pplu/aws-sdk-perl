package Paws::S3::EncryptionConfiguration;
  use Moose;
  has ReplicaKmsKeyID => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::EncryptionConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::EncryptionConfiguration object:

  $service_obj->Method(Att1 => { ReplicaKmsKeyID => $value, ..., ReplicaKmsKeyID => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::EncryptionConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->ReplicaKmsKeyID

=head1 DESCRIPTION

A container for information about the encryption-based configuration
for replicas.

=head1 ATTRIBUTES


=head2 ReplicaKmsKeyID => Str

  The ID of the AWS KMS key for the AWS Region where the destination
bucket resides. Amazon S3 uses this key to encrypt the replica object.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

