
package Paws::StorageGateway::CreateNFSFileShare;
  use Moose;
  has ClientList => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ClientToken => (is => 'ro', isa => 'Str', required => 1);
  has DefaultStorageClass => (is => 'ro', isa => 'Str');
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);
  has KMSEncrypted => (is => 'ro', isa => 'Bool');
  has KMSKey => (is => 'ro', isa => 'Str');
  has LocationARN => (is => 'ro', isa => 'Str', required => 1);
  has NFSFileShareDefaults => (is => 'ro', isa => 'Paws::StorageGateway::NFSFileShareDefaults');
  has Role => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateNFSFileShare');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::StorageGateway::CreateNFSFileShareOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::CreateNFSFileShare - Arguments for method CreateNFSFileShare on Paws::StorageGateway

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateNFSFileShare on the 
AWS Storage Gateway service. Use the attributes of this class
as arguments to method CreateNFSFileShare.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateNFSFileShare.

As an example:

  $service_obj->CreateNFSFileShare(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 ClientList => ArrayRef[Str|Undef]

The list of clients that are allowed to access the file gateway. The
list must contain either valid IP addresses or valid CIDR blocks.



=head2 B<REQUIRED> ClientToken => Str

A unique string value that you supply that is used by file gateway to
ensure idempotent file share creation.



=head2 DefaultStorageClass => Str

The default storage class for objects put into an Amazon S3 bucket by
file gateway. Possible values are S3_STANDARD or S3_STANDARD_IA. If
this field is not populated, the default value S3_STANDARD is used.
Optional.



=head2 B<REQUIRED> GatewayARN => Str

The Amazon Resource Name (ARN) of the file gateway on which you want to
create a file share.



=head2 KMSEncrypted => Bool

True to use Amazon S3 server side encryption with your own AWS KMS key,
or false to use a key managed by Amazon S3. Optional.



=head2 KMSKey => Str

The KMS key used for Amazon S3 server side encryption. This value can
only be set when KmsEncrypted is true. Optional.



=head2 B<REQUIRED> LocationARN => Str

The ARN of the backend storage used for storing file data.



=head2 NFSFileShareDefaults => L<Paws::StorageGateway::NFSFileShareDefaults>

File share default values. Optional.



=head2 B<REQUIRED> Role => Str

The ARN of the AWS Identity and Access Management (IAM) role that a
file gateway assumes when it accesses the underlying storage.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateNFSFileShare in L<Paws::StorageGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

