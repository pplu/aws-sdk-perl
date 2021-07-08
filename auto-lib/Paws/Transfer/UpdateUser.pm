
package Paws::Transfer::UpdateUser;
  use Moose;
  has HomeDirectory => (is => 'ro', isa => 'Str');
  has HomeDirectoryMappings => (is => 'ro', isa => 'ArrayRef[Paws::Transfer::HomeDirectoryMapEntry]');
  has HomeDirectoryType => (is => 'ro', isa => 'Str');
  has Policy => (is => 'ro', isa => 'Str');
  has PosixProfile => (is => 'ro', isa => 'Paws::Transfer::PosixProfile');
  has Role => (is => 'ro', isa => 'Str');
  has ServerId => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateUser');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Transfer::UpdateUserResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::UpdateUser - Arguments for method UpdateUser on L<Paws::Transfer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateUser on the
L<AWS Transfer Family|Paws::Transfer> service. Use the attributes of this class
as arguments to method UpdateUser.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateUser.

=head1 SYNOPSIS

    my $transfer = Paws->service('Transfer');
    my $UpdateUserResponse = $transfer->UpdateUser(
      ServerId              => 'MyServerId',
      UserName              => 'MyUserName',
      HomeDirectory         => 'MyHomeDirectory',    # OPTIONAL
      HomeDirectoryMappings => [
        {
          Entry  => 'MyMapEntry',     # max: 1024
          Target => 'MyMapTarget',    # max: 1024

        },
        ...
      ],    # OPTIONAL
      HomeDirectoryType => 'PATH',        # OPTIONAL
      Policy            => 'MyPolicy',    # OPTIONAL
      PosixProfile      => {
        Gid           => 1,               # max: 4294967295
        Uid           => 1,               # max: 4294967295
        SecondaryGids => [
          1, ...                          # max: 4294967295
        ],    # max: 16; OPTIONAL
      },    # OPTIONAL
      Role => 'MyRole',    # OPTIONAL
    );

    # Results:
    my $ServerId = $UpdateUserResponse->ServerId;
    my $UserName = $UpdateUserResponse->UserName;

    # Returns a L<Paws::Transfer::UpdateUserResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/transfer/UpdateUser>

=head1 ATTRIBUTES


=head2 HomeDirectory => Str

The landing directory (folder) for a user when they log in to the
server using the client.

A C<HomeDirectory> example is C</bucket_name/home/mydirectory>.



=head2 HomeDirectoryMappings => ArrayRef[L<Paws::Transfer::HomeDirectoryMapEntry>]

Logical directory mappings that specify what Amazon S3 or Amazon EFS
paths and keys should be visible to your user and how you want to make
them visible. You must specify the C<Entry> and C<Target> pair, where
C<Entry> shows how the path is made visible and C<Target> is the actual
Amazon S3 or Amazon EFS path. If you only specify a target, it is
displayed as is. You also must ensure that your Amazon Web Services
Identity and Access Management (IAM) role provides access to paths in
C<Target>. This value can only be set when C<HomeDirectoryType> is set
to I<LOGICAL>.

The following is an C<Entry> and C<Target> pair example.

C<[ { "Entry": "your-personal-report.pdf", "Target":
"/bucket3/customized-reports/${transfer:UserName}.pdf" } ]>

In most cases, you can use this value instead of the scope-down policy
to lock down your user to the designated home directory ("C<chroot>").
To do this, you can set C<Entry> to '/' and set C<Target> to the
HomeDirectory parameter value.

The following is an C<Entry> and C<Target> pair example for C<chroot>.

C<[ { "Entry:": "/", "Target": "/bucket_name/home/mydirectory" } ]>

If the target of a logical directory entry does not exist in Amazon S3
or EFS, the entry is ignored. As a workaround, you can use the Amazon
S3 API or EFS API to create 0 byte objects as place holders for your
directory. If using the CLI, use the C<s3api> or C<efsapi> call instead
of C<s3> or C<efs> so you can use the put-object operation. For
example, you use the following: C<aws s3api put-object --bucket
bucketname --key path/to/folder/>. Make sure that the end of the key
name ends in a C</> for it to be considered a folder.



=head2 HomeDirectoryType => Str

The type of landing directory (folder) you want your users' home
directory to be when they log into the server. If you set it to
C<PATH>, the user will see the absolute Amazon S3 bucket or EFS paths
as is in their file transfer protocol clients. If you set it
C<LOGICAL>, you will need to provide mappings in the
C<HomeDirectoryMappings> for how you want to make Amazon S3 or EFS
paths visible to your users.

Valid values are: C<"PATH">, C<"LOGICAL">

=head2 Policy => Str

A scope-down policy for your user so that you can use the same IAM role
across multiple users. This policy scopes down user access to portions
of their Amazon S3 bucket. Variables that you can use inside this
policy include C<${Transfer:UserName}>, C<${Transfer:HomeDirectory}>,
and C<${Transfer:HomeBucket}>.

This only applies when domain of C<ServerId> is S3. Amazon EFS does not
use scope-down policies.

For scope-down policies, Amazon Web ServicesTransfer Family stores the
policy as a JSON blob, instead of the Amazon Resource Name (ARN) of the
policy. You save the policy as a JSON blob and pass it in the C<Policy>
argument.

For an example of a scope-down policy, see Creating a scope-down policy
(https://docs.aws.amazon.com/transfer/latest/userguide/users.html#users-policies-scope-down).

For more information, see AssumeRole
(https://docs.aws.amazon.com/STS/latest/APIReference/API_AssumeRole.html)
in the I<Amazon Web Services Security Token Service API Reference>.



=head2 PosixProfile => L<Paws::Transfer::PosixProfile>

Specifies the full POSIX identity, including user ID (C<Uid>), group ID
(C<Gid>), and any secondary groups IDs (C<SecondaryGids>), that
controls your users' access to your Amazon Elastic File Systems (Amazon
EFS). The POSIX permissions that are set on files and directories in
your file system determines the level of access your users get when
transferring files into and out of your Amazon EFS file systems.



=head2 Role => Str

Specifies the Amazon Resource Name (ARN) of the IAM role that controls
your users' access to your Amazon S3 bucket or EFS file system. The
policies attached to this role determine the level of access that you
want to provide your users when transferring files into and out of your
Amazon S3 bucket or EFS file system. The IAM role should also contain a
trust relationship that allows the server to access your resources when
servicing your users' transfer requests.



=head2 B<REQUIRED> ServerId => Str

A system-assigned unique identifier for a server instance that the user
account is assigned to.



=head2 B<REQUIRED> UserName => Str

A unique string that identifies a user and is associated with a server
as specified by the C<ServerId>. This user name must be a minimum of 3
and a maximum of 100 characters long. The following are valid
characters: a-z, A-Z, 0-9, underscore '_', hyphen '-', period '.', and
at sign '@'. The user name can't start with a hyphen, period, or at
sign.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateUser in L<Paws::Transfer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

