
package Paws::StorageGateway::CreateSMBFileShare;
  use Moose;
  has AccessBasedEnumeration => (is => 'ro', isa => 'Bool');
  has AdminUserList => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has AuditDestinationARN => (is => 'ro', isa => 'Str');
  has Authentication => (is => 'ro', isa => 'Str');
  has CacheAttributes => (is => 'ro', isa => 'Paws::StorageGateway::CacheAttributes');
  has CaseSensitivity => (is => 'ro', isa => 'Str');
  has ClientToken => (is => 'ro', isa => 'Str', required => 1);
  has DefaultStorageClass => (is => 'ro', isa => 'Str');
  has FileShareName => (is => 'ro', isa => 'Str');
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);
  has GuessMIMETypeEnabled => (is => 'ro', isa => 'Bool');
  has InvalidUserList => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has KMSEncrypted => (is => 'ro', isa => 'Bool');
  has KMSKey => (is => 'ro', isa => 'Str');
  has LocationARN => (is => 'ro', isa => 'Str', required => 1);
  has NotificationPolicy => (is => 'ro', isa => 'Str');
  has ObjectACL => (is => 'ro', isa => 'Str');
  has ReadOnly => (is => 'ro', isa => 'Bool');
  has RequesterPays => (is => 'ro', isa => 'Bool');
  has Role => (is => 'ro', isa => 'Str', required => 1);
  has SMBACLEnabled => (is => 'ro', isa => 'Bool');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::StorageGateway::Tag]');
  has ValidUserList => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSMBFileShare');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::StorageGateway::CreateSMBFileShareOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::CreateSMBFileShare - Arguments for method CreateSMBFileShare on L<Paws::StorageGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateSMBFileShare on the
L<AWS Storage Gateway|Paws::StorageGateway> service. Use the attributes of this class
as arguments to method CreateSMBFileShare.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateSMBFileShare.

=head1 SYNOPSIS

    my $storagegateway = Paws->service('StorageGateway');
    my $CreateSMBFileShareOutput = $storagegateway->CreateSMBFileShare(
      ClientToken            => 'MyClientToken',
      GatewayARN             => 'MyGatewayARN',
      LocationARN            => 'MyLocationARN',
      Role                   => 'MyRole',
      AccessBasedEnumeration => 1,                 # OPTIONAL
      AdminUserList          => [
        'MyUserListUser', ...                      # min: 1, max: 64
      ],    # OPTIONAL
      AuditDestinationARN => 'MyAuditDestinationARN',    # OPTIONAL
      Authentication      => 'MyAuthentication',         # OPTIONAL
      CacheAttributes     => {
        CacheStaleTimeoutInSeconds => 1,                 # OPTIONAL
      },    # OPTIONAL
      CaseSensitivity      => 'ClientSpecified',    # OPTIONAL
      DefaultStorageClass  => 'MyStorageClass',     # OPTIONAL
      FileShareName        => 'MyFileShareName',    # OPTIONAL
      GuessMIMETypeEnabled => 1,                    # OPTIONAL
      InvalidUserList      => [
        'MyUserListUser', ...                       # min: 1, max: 64
      ],    # OPTIONAL
      KMSEncrypted       => 1,                         # OPTIONAL
      KMSKey             => 'MyKMSKey',                # OPTIONAL
      NotificationPolicy => 'MyNotificationPolicy',    # OPTIONAL
      ObjectACL          => 'private',                 # OPTIONAL
      ReadOnly           => 1,                         # OPTIONAL
      RequesterPays      => 1,                         # OPTIONAL
      SMBACLEnabled      => 1,                         # OPTIONAL
      Tags               => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      ValidUserList => [
        'MyUserListUser', ...    # min: 1, max: 64
      ],    # OPTIONAL
    );

    # Results:
    my $FileShareARN = $CreateSMBFileShareOutput->FileShareARN;

    # Returns a L<Paws::StorageGateway::CreateSMBFileShareOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/storagegateway/CreateSMBFileShare>

=head1 ATTRIBUTES


=head2 AccessBasedEnumeration => Bool

The files and folders on this share will only be visible to users with
read access.



=head2 AdminUserList => ArrayRef[Str|Undef]

A list of users or groups in the Active Directory that will be granted
administrator privileges on the file share. These users can do all file
operations as the super-user. Acceptable formats include:
C<DOMAIN\User1>, C<user1>, C<@group1>, and C<@DOMAIN\group1>.

Use this option very carefully, because any user in this list can do
anything they like on the file share, regardless of file permissions.



=head2 AuditDestinationARN => Str

The Amazon Resource Name (ARN) of the storage used for audit logs.



=head2 Authentication => Str

The authentication method that users use to access the file share. The
default is C<ActiveDirectory>.

Valid Values: C<ActiveDirectory> | C<GuestAccess>



=head2 CacheAttributes => L<Paws::StorageGateway::CacheAttributes>

Specifies refresh cache information for the file share.



=head2 CaseSensitivity => Str

The case of an object name in an Amazon S3 bucket. For
C<ClientSpecified>, the client determines the case sensitivity. For
C<CaseSensitive>, the gateway determines the case sensitivity. The
default value is C<ClientSpecified>.

Valid values are: C<"ClientSpecified">, C<"CaseSensitive">

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

The ARN of the file gateway on which you want to create a file share.



=head2 GuessMIMETypeEnabled => Bool

A value that enables guessing of the MIME type for uploaded objects
based on file extensions. Set this value to C<true> to enable MIME type
guessing, otherwise set to C<false>. The default value is C<true>.

Valid Values: C<true> | C<false>



=head2 InvalidUserList => ArrayRef[Str|Undef]

A list of users or groups in the Active Directory that are not allowed
to access the file share. A group must be prefixed with the @
character. Acceptable formats include: C<DOMAIN\User1>, C<user1>,
C<@group1>, and C<@DOMAIN\group1>. Can only be set if Authentication is
set to C<ActiveDirectory>.



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



=head2 SMBACLEnabled => Bool

Set this value to C<true> to enable access control list (ACL) on the
SMB file share. Set it to C<false> to map file and directory
permissions to the POSIX permissions.

For more information, see Using Microsoft Windows ACLs to control
access to an SMB file share
(https://docs.aws.amazon.com/storagegateway/latest/userguide/smb-acl.html)
in the I<AWS Storage Gateway User Guide>.

Valid Values: C<true> | C<false>



=head2 Tags => ArrayRef[L<Paws::StorageGateway::Tag>]

A list of up to 50 tags that can be assigned to the NFS file share.
Each tag is a key-value pair.

Valid characters for key and value are letters, spaces, and numbers
representable in UTF-8 format, and the following special characters: +
- = . _ : / @. The maximum length of a tag's key is 128 characters, and
the maximum length for a tag's value is 256.



=head2 ValidUserList => ArrayRef[Str|Undef]

A list of users or groups in the Active Directory that are allowed to
access the file share. A group must be prefixed with the @ character.
Acceptable formats include: C<DOMAIN\User1>, C<user1>, C<@group1>, and
C<@DOMAIN\group1>. Can only be set if Authentication is set to
C<ActiveDirectory>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateSMBFileShare in L<Paws::StorageGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

