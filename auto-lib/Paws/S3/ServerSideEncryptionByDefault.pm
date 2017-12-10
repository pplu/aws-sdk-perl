package Paws::S3::ServerSideEncryptionByDefault;
  use Moose;
  has KMSMasterKeyID => (is => 'ro', isa => 'Str');
  has SSEAlgorithm => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::ServerSideEncryptionByDefault

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::ServerSideEncryptionByDefault object:

  $service_obj->Method(Att1 => { KMSMasterKeyID => $value, ..., SSEAlgorithm => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::ServerSideEncryptionByDefault object:

  $result = $service_obj->Method(...);
  $result->Att1->KMSMasterKeyID

=head1 DESCRIPTION

Describes the default server-side encryption to apply to new objects in
the bucket. If Put Object request does not specify any server-side
encryption, this default encryption will be applied.

=head1 ATTRIBUTES


=head2 KMSMasterKeyID => Str

  KMS master key ID to use for the default encryption. This parameter is
allowed if SSEAlgorithm is aws:kms.


=head2 B<REQUIRED> SSEAlgorithm => Str

  Server-side encryption algorithm to use for the default encryption.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

