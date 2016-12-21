
package Paws::StorageGateway::UpdateNFSFileShare;
  use Moose;
  has DefaultStorageClass => (is => 'ro', isa => 'Str');
  has FileShareARN => (is => 'ro', isa => 'Str', required => 1);
  has KMSEncrypted => (is => 'ro', isa => 'Bool');
  has KMSKey => (is => 'ro', isa => 'Str');
  has NFSFileShareDefaults => (is => 'ro', isa => 'Paws::StorageGateway::NFSFileShareDefaults');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateNFSFileShare');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::StorageGateway::UpdateNFSFileShareOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::UpdateNFSFileShare - Arguments for method UpdateNFSFileShare on Paws::StorageGateway

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateNFSFileShare on the 
AWS Storage Gateway service. Use the attributes of this class
as arguments to method UpdateNFSFileShare.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateNFSFileShare.

As an example:

  $service_obj->UpdateNFSFileShare(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 DefaultStorageClass => Str

The default storage class for objects put into an Amazon S3 bucket by a
file gateway. Possible values are S3_STANDARD or S3_STANDARD_IA. If
this field is not populated, the default value S3_STANDARD is used.
Optional.



=head2 B<REQUIRED> FileShareARN => Str

The Amazon Resource Name (ARN) of the file share to be updated.



=head2 KMSEncrypted => Bool

True to use Amazon S3 server side encryption with your own AWS KMS key,
or false to use a key managed by Amazon S3. Optional.



=head2 KMSKey => Str

The KMS key used for Amazon S3 server side encryption. This value can
only be set when KmsEncrypted is true. Optional.



=head2 NFSFileShareDefaults => L<Paws::StorageGateway::NFSFileShareDefaults>

The default values for the file share. Optional.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateNFSFileShare in L<Paws::StorageGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

