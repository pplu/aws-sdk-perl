
package Paws::Transfer::UpdateUser;
  use Moose;
  has HomeDirectory => (is => 'ro', isa => 'Str');
  has HomeDirectoryMappings => (is => 'ro', isa => 'ArrayRef[Paws::Transfer::HomeDirectoryMapEntry]');
  has HomeDirectoryType => (is => 'ro', isa => 'Str');
  has Policy => (is => 'ro', isa => 'Str');
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
L<AWS Transfer for SFTP|Paws::Transfer> service. Use the attributes of this class
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
      Role              => 'MyRole',      # OPTIONAL
    );

    # Results:
    my $ServerId = $UpdateUserResponse->ServerId;
    my $UserName = $UpdateUserResponse->UserName;

    # Returns a L<Paws::Transfer::UpdateUserResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/transfer/UpdateUser>

=head1 ATTRIBUTES


=head2 HomeDirectory => Str

A parameter that specifies the landing directory (folder) for a user
when they log in to the server using their client.

An example is C<E<lt>your-Amazon-S3-bucket-nameE<gt>/home/username>.



=head2 HomeDirectoryMappings => ArrayRef[L<Paws::Transfer::HomeDirectoryMapEntry>]

Logical directory mappings that specify what S3 paths and keys should
be visible to your user and how you want to make them visible. You will
need to specify the "C<Entry>" and "C<Target>" pair, where C<Entry>
shows how the path is made visible and C<Target> is the actual S3 path.
If you only specify a target, it will be displayed as is. You will need
to also make sure that your AWS IAM Role provides access to paths in
C<Target>. The following is an example.

C<'[ "/bucket2/documentation", { "Entry": "your-personal-report.pdf",
"Target": "/bucket3/customized-reports/${transfer:UserName}.pdf" } ]'>

In most cases, you can use this value instead of the scope down policy
to lock your user down to the designated home directory ("chroot"). To
do this, you can set C<Entry> to '/' and set C<Target> to the
HomeDirectory parameter value.

If the target of a logical directory entry does not exist in S3, the
entry will be ignored. As a workaround, you can use the S3 api to
create 0 byte objects as place holders for your directory. If using the
CLI, use the s3api call instead of s3 so you can use the put-object
operation. For example, you use the following: C<aws s3api put-object
--bucket bucketname --key path/to/folder/>. Make sure that the end of
the key name ends in a / for it to be considered a folder.



=head2 HomeDirectoryType => Str

The type of landing directory (folder) you want your users' home
directory to be when they log into the SFTP serve. If you set it to
C<PATH>, the user will see the absolute Amazon S3 bucket paths as is in
their SFTP clients. If you set it C<LOGICAL>, you will need to provide
mappings in the C<HomeDirectoryMappings> for how you want to make S3
paths visible to your user.

Valid values are: C<"PATH">, C<"LOGICAL">

=head2 Policy => Str

Allows you to supply a scope-down policy for your user so you can use
the same AWS Identity and Access Management (IAM) role across multiple
users. The policy scopes down user access to portions of your Amazon S3
bucket. Variables you can use inside this policy include
C<${Transfer:UserName}>, C<${Transfer:HomeDirectory}>, and
C<${Transfer:HomeBucket}>.

For scope-down policies, AWS Transfer for SFTP stores the policy as a
JSON blob, instead of the Amazon Resource Name (ARN) of the policy. You
save the policy as a JSON blob and pass it in the C<Policy> argument.

For an example of a scope-down policy, see
"https://docs.aws.amazon.com/transfer/latest/userguide/users.html#users-policies-scope-down"E<gt>Creating
a Scope-Down Policy.

For more information, see
"https://docs.aws.amazon.com/STS/latest/APIReference/API_AssumeRole.html"
in the I<AWS Security Token Service API Reference>.



=head2 Role => Str

The IAM role that controls your user's access to your Amazon S3 bucket.
The policies attached to this role will determine the level of access
you want to provide your users when transferring files into and out of
your Amazon S3 bucket or buckets. The IAM role should also contain a
trust relationship that allows the Secure File Transfer Protocol (SFTP)
server to access your resources when servicing your SFTP user's
transfer requests.



=head2 B<REQUIRED> ServerId => Str

A system-assigned unique identifier for an SFTP server instance that
the user account is assigned to.



=head2 B<REQUIRED> UserName => Str

A unique string that identifies a user and is associated with a server
as specified by the C<ServerId>. This is the string that will be used
by your user when they log in to your SFTP server. This user name is a
minimum of 3 and a maximum of 32 characters long. The following are
valid characters: a-z, A-Z, 0-9, underscore, and hyphen. The user name
can't start with a hyphen.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateUser in L<Paws::Transfer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

