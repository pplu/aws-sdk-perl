
package Paws::StorageGateway::CreateNFSFileShare;
  use Moose;
  has CacheAttributes => (is => 'ro', isa => 'Paws::StorageGateway::CacheAttributes');
  has ClientList => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ClientToken => (is => 'ro', isa => 'Str', required => 1);
  has DefaultStorageClass => (is => 'ro', isa => 'Str');
  has FileShareName => (is => 'ro', isa => 'Str');
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);
  has GuessMIMETypeEnabled => (is => 'ro', isa => 'Bool');
  has KMSEncrypted => (is => 'ro', isa => 'Bool');
  has KMSKey => (is => 'ro', isa => 'Str');
  has LocationARN => (is => 'ro', isa => 'Str', required => 1);
  has NFSFileShareDefaults => (is => 'ro', isa => 'Paws::StorageGateway::NFSFileShareDefaults');
  has NotificationPolicy => (is => 'ro', isa => 'Str');
  has ObjectACL => (is => 'ro', isa => 'Str');
  has ReadOnly => (is => 'ro', isa => 'Bool');
  has RequesterPays => (is => 'ro', isa => 'Bool');
  has Role => (is => 'ro', isa => 'Str', required => 1);
  has Squash => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::StorageGateway::Tag]');

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
      ClientToken     => 'MyClientToken',
      GatewayARN      => 'MyGatewayARN',
      LocationARN     => 'MyLocationARN',
      Role            => 'MyRole',
      CacheAttributes => {
        CacheStaleTimeoutInSeconds => 1,    # OPTIONAL
      },    # OPTIONAL
      ClientList           => [ 'MyIPV4AddressCIDR', ... ],    # OPTIONAL
      DefaultStorageClass  => 'MyStorageClass',                # OPTIONAL
      FileShareName        => 'MyFileShareName',               # OPTIONAL
      GuessMIMETypeEnabled => 1,                               # OPTIONAL
      KMSEncrypted         => 1,                               # OPTIONAL
      KMSKey               => 'MyKMSKey',                      # OPTIONAL
      NFSFileShareDefaults => {
        DirectoryMode => 'MyPermissionMode',    # min: 1, max: 4; OPTIONAL
        FileMode      => 'MyPermissionMode',    # min: 1, max: 4; OPTIONAL
        GroupId       => 1,                     # max: 4294967294; OPTIONAL
        OwnerId       => 1,                     # max: 4294967294; OPTIONAL
      },    # OPTIONAL
      NotificationPolicy => 'MyNotificationPolicy',    # OPTIONAL
      ObjectACL          => 'private',                 # OPTIONAL
      ReadOnly           => 1,                         # OPTIONAL
      RequesterPays      => 1,                         # OPTIONAL
      Squash             => 'MySquash',                # OPTIONAL
      Tags               => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $FileShareARN = $CreateNFSFileShareOutput->FileShareARN;

    # Returns a L<Paws::StorageGateway::CreateNFSFileShareOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/storagegateway/CreateNFSFileShare>

=head1 ATTRIBUTES


=head2 CacheAttributes => L<Paws::StorageGateway::CacheAttributes>

Specifies refresh cache information for the file share.



=head2 ClientList => ArrayRef[Str|Undef]

The list of clients that are allowed to access the file gateway. The
list must contain either valid IP addresses or valid CIDR blocks.



=head2 B<REQUIRED> ClientToken => Str

A unique string value that you supply that is used by file gateway to
ensure idempotent file share creation.



=head2 DefaultStorageClass => Str

The default storage class for objects put into an Amazon S3 bucket by
the file gateway. The default value is C<S3_INTELLIGENT_TIERING>.
Optional.

Valid Values: C<S3_STANDARD> | C<S3_INTELLIGENT_TIERING> |
C<S3_STANDARD_IA> | C<S3_ONEZONE_IA>



=head2 FileShareName => Str

The name of the file share. Optional.

C<FileShareName> must be set if an S3 prefix name is set in
C<LocationARN>.



=head2 B<REQUIRED> GatewayARN => Str

The Amazon Resource Name (ARN) of the file gateway on which you want to
create a file share.



=head2 GuessMIMETypeEnabled => Bool

A value that enables guessing of the MIME type for uploaded objects
based on file extensions. Set this value to C<true> to enable MIME type
guessing, otherwise set to C<false>. The default value is C<true>.

Valid Values: C<true> | C<false>



=head2 KMSEncrypted => Bool

Set to C<true> to use Amazon S3 server-side encryption with your own
AWS KMS key, or C<false> to use a key managed by Amazon S3. Optional.

Valid Values: C<true> | C<false>



=head2 KMSKey => Str

The Amazon Resource Name (ARN) of a symmetric customer master key (CMK)
used for Amazon S3 server-side encryption. Storage Gateway does not
support asymmetric CMKs. This value can only be set when
C<KMSEncrypted> is C<true>. Optional.



=head2 B<REQUIRED> LocationARN => Str

The ARN of the backend storage used for storing file data. A prefix
name can be added to the S3 bucket name. It must end with a "/".



=head2 NFSFileShareDefaults => L<Paws::StorageGateway::NFSFileShareDefaults>

File share default values. Optional.



=head2 NotificationPolicy => Str

The notification policy of the file share. C<SettlingTimeInSeconds>
controls the number of seconds to wait after the last point in time a
client wrote to a file before generating an C<ObjectUploaded>
notification. Because clients can make many small writes to files, it's
best to set this parameter for as long as possible to avoid generating
multiple notifications for the same file in a small time period.

C<SettlingTimeInSeconds> has no effect on the timing of the object
uploading to Amazon S3, only the timing of the notification.

The following example sets C<NotificationPolicy> on with
C<SettlingTimeInSeconds> set to 60.

C<{\"Upload\": {\"SettlingTimeInSeconds\": 60}}>

The following example sets C<NotificationPolicy> off.

C<{}>



=head2 ObjectACL => Str

A value that sets the access control list (ACL) permission for objects
in the S3 bucket that a file gateway puts objects into. The default
value is C<private>.

Valid values are: C<"private">, C<"public-read">, C<"public-read-write">, C<"authenticated-read">, C<"bucket-owner-read">, C<"bucket-owner-full-control">, C<"aws-exec-read">

=head2 ReadOnly => Bool

A value that sets the write status of a file share. Set this value to
C<true> to set the write status to read-only, otherwise set to
C<false>.

Valid Values: C<true> | C<false>



=head2 RequesterPays => Bool

A value that sets who pays the cost of the request and the cost
associated with data download from the S3 bucket. If this value is set
to C<true>, the requester pays the costs; otherwise, the S3 bucket
owner pays. However, the S3 bucket owner always pays the cost of
storing data.

C<RequesterPays> is a configuration for the S3 bucket that backs the
file share, so make sure that the configuration on the file share is
the same as the S3 bucket configuration.

Valid Values: C<true> | C<false>



=head2 B<REQUIRED> Role => Str

The ARN of the AWS Identity and Access Management (IAM) role that a
file gateway assumes when it accesses the underlying storage.



=head2 Squash => Str

A value that maps a user to anonymous user.

Valid values are the following:

=over

=item *

C<RootSquash>: Only root is mapped to anonymous user.

=item *

C<NoSquash>: No one is mapped to anonymous user.

=item *

C<AllSquash>: Everyone is mapped to anonymous user.

=back




=head2 Tags => ArrayRef[L<Paws::StorageGateway::Tag>]

A list of up to 50 tags that can be assigned to the NFS file share.
Each tag is a key-value pair.

Valid characters for key and value are letters, spaces, and numbers
representable in UTF-8 format, and the following special characters: +
- = . _ : / @. The maximum length of a tag's key is 128 characters, and
the maximum length for a tag's value is 256.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateNFSFileShare in L<Paws::StorageGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

