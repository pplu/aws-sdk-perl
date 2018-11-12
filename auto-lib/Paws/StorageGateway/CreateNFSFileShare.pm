
package Paws::StorageGateway::CreateNFSFileShare;
  use Moose;
  has ClientList => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ClientToken => (is => 'ro', isa => 'Str', required => 1);
  has DefaultStorageClass => (is => 'ro', isa => 'Str');
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);
  has GuessMIMETypeEnabled => (is => 'ro', isa => 'Bool');
  has KMSEncrypted => (is => 'ro', isa => 'Bool');
  has KMSKey => (is => 'ro', isa => 'Str');
  has LocationARN => (is => 'ro', isa => 'Str', required => 1);
  has NFSFileShareDefaults => (is => 'ro', isa => 'Paws::StorageGateway::NFSFileShareDefaults');
  has ObjectACL => (is => 'ro', isa => 'Str');
  has ReadOnly => (is => 'ro', isa => 'Bool');
  has RequesterPays => (is => 'ro', isa => 'Bool');
  has Role => (is => 'ro', isa => 'Str', required => 1);
  has Squash => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateNFSFileShare');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::StorageGateway::CreateNFSFileShareOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::CreateNFSFileShare - Arguments for method CreateNFSFileShare on L<Paws::StorageGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateNFSFileShare on the
L<AWS Storage Gateway|Paws::StorageGateway> service. Use the attributes of this class
as arguments to method CreateNFSFileShare.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateNFSFileShare.

=head1 SYNOPSIS

    my $storagegateway = Paws->service('StorageGateway');
    my $CreateNFSFileShareOutput = $storagegateway->CreateNFSFileShare(
      ClientToken          => 'MyClientToken',
      GatewayARN           => 'MyGatewayARN',
      LocationARN          => 'MyLocationARN',
      Role                 => 'MyRole',
      ClientList           => [ 'MyIPV4AddressCIDR', ... ],    # OPTIONAL
      DefaultStorageClass  => 'MyStorageClass',                # OPTIONAL
      GuessMIMETypeEnabled => 1,                               # OPTIONAL
      KMSEncrypted         => 1,                               # OPTIONAL
      KMSKey               => 'MyKMSKey',                      # OPTIONAL
      NFSFileShareDefaults => {
        DirectoryMode => 'MyPermissionMode',    # min: 1, max: 4; OPTIONAL
        FileMode      => 'MyPermissionMode',    # min: 1, max: 4; OPTIONAL
        GroupId       => 1,                     # max: 4294967294; OPTIONAL
        OwnerId       => 1,                     # max: 4294967294; OPTIONAL
      },    # OPTIONAL
      ObjectACL     => 'private',     # OPTIONAL
      ReadOnly      => 1,             # OPTIONAL
      RequesterPays => 1,             # OPTIONAL
      Squash        => 'MySquash',    # OPTIONAL
    );

    # Results:
    my $FileShareARN = $CreateNFSFileShareOutput->FileShareARN;

    # Returns a L<Paws::StorageGateway::CreateNFSFileShareOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/storagegateway/CreateNFSFileShare>

=head1 ATTRIBUTES


=head2 ClientList => ArrayRef[Str|Undef]

The list of clients that are allowed to access the file gateway. The
list must contain either valid IP addresses or valid CIDR blocks.



=head2 B<REQUIRED> ClientToken => Str

A unique string value that you supply that is used by file gateway to
ensure idempotent file share creation.



=head2 DefaultStorageClass => Str

The default storage class for objects put into an Amazon S3 bucket by
the file gateway. Possible values are C<S3_STANDARD>,
C<S3_STANDARD_IA>, or C<S3_ONEZONE_IA>. If this field is not populated,
the default value C<S3_STANDARD> is used. Optional.



=head2 B<REQUIRED> GatewayARN => Str

The Amazon Resource Name (ARN) of the file gateway on which you want to
create a file share.



=head2 GuessMIMETypeEnabled => Bool

A value that enables guessing of the MIME type for uploaded objects
based on file extensions. Set this value to true to enable MIME type
guessing, and otherwise to false. The default value is true.



=head2 KMSEncrypted => Bool

True to use Amazon S3 server side encryption with your own AWS KMS key,
or false to use a key managed by Amazon S3. Optional.



=head2 KMSKey => Str

The Amazon Resource Name (ARN) AWS KMS key used for Amazon S3 server
side encryption. This value can only be set when KMSEncrypted is true.
Optional.



=head2 B<REQUIRED> LocationARN => Str

The ARN of the backed storage used for storing file data.



=head2 NFSFileShareDefaults => L<Paws::StorageGateway::NFSFileShareDefaults>

File share default values. Optional.



=head2 ObjectACL => Str

A value that sets the access control list permission for objects in the
S3 bucket that a file gateway puts objects into. The default value is
"private".

Valid values are: C<"private">, C<"public-read">, C<"public-read-write">, C<"authenticated-read">, C<"bucket-owner-read">, C<"bucket-owner-full-control">, C<"aws-exec-read">

=head2 ReadOnly => Bool

A value that sets the write status of a file share. This value is true
if the write status is read-only, and otherwise false.



=head2 RequesterPays => Bool

A value that sets the access control list permission for objects in the
Amazon S3 bucket that a file gateway puts objects into. The default
value is C<private>.



=head2 B<REQUIRED> Role => Str

The ARN of the AWS Identity and Access Management (IAM) role that a
file gateway assumes when it accesses the underlying storage.



=head2 Squash => Str

Maps a user to anonymous user. Valid options are the following:

=over

=item *

C<RootSquash> - Only root is mapped to anonymous user.

=item *

C<NoSquash> - No one is mapped to anonymous user

=item *

C<AllSquash> - Everyone is mapped to anonymous user.

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateNFSFileShare in L<Paws::StorageGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

