# Generated from json/callargs_class.tt

package Paws::Transfer::CreateUser;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Transfer::Types qw/Transfer_Tag/;
  has HomeDirectory => (is => 'ro', isa => Str, predicate => 1);
  has Policy => (is => 'ro', isa => Str, predicate => 1);
  has Role => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ServerId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has SshPublicKeyBody => (is => 'ro', isa => Str, predicate => 1);
  has Tags => (is => 'ro', isa => ArrayRef[Transfer_Tag], predicate => 1);
  has UserName => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateUser');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Transfer::CreateUserResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'UserName' => {
                               'type' => 'Str'
                             },
               'Role' => {
                           'type' => 'Str'
                         },
               'ServerId' => {
                               'type' => 'Str'
                             },
               'Policy' => {
                             'type' => 'Str'
                           },
               'Tags' => {
                           'class' => 'Paws::Transfer::Tag',
                           'type' => 'ArrayRef[Transfer_Tag]'
                         },
               'SshPublicKeyBody' => {
                                       'type' => 'Str'
                                     },
               'HomeDirectory' => {
                                    'type' => 'Str'
                                  }
             },
  'IsRequired' => {
                    'UserName' => 1,
                    'Role' => 1,
                    'ServerId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::CreateUser - Arguments for method CreateUser on L<Paws::Transfer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateUser on the
L<AWS Transfer for SFTP|Paws::Transfer> service. Use the attributes of this class
as arguments to method CreateUser.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateUser.

=head1 SYNOPSIS

    my $transfer = Paws->service('Transfer');
    my $CreateUserResponse = $transfer->CreateUser(
      Role             => 'MyRole',
      ServerId         => 'MyServerId',
      UserName         => 'MyUserName',
      HomeDirectory    => 'MyHomeDirectory',       # OPTIONAL
      Policy           => 'MyPolicy',              # OPTIONAL
      SshPublicKeyBody => 'MySshPublicKeyBody',    # OPTIONAL
      Tags             => [
        {
          Key   => 'MyTagKey',
          Value => 'MyTagValue',

        },
        ...
      ],                                           # OPTIONAL
    );

    # Results:
    my $ServerId = $CreateUserResponse->ServerId;
    my $UserName = $CreateUserResponse->UserName;

    # Returns a L<Paws::Transfer::CreateUserResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/transfer/CreateUser>

=head1 ATTRIBUTES


=head2 HomeDirectory => Str

The landing directory (folder) for a user when they log in to the
server using their SFTP client. An example is C</home/I<username> >.



=head2 Policy => Str

A scope-down policy for your user so you can use the same IAM role
across multiple users. This policy scopes down user access to portions
of their Amazon S3 bucket. Variables you can use inside this policy
include C<${Transfer:UserName}>, C<${Transfer:HomeDirectory}>, and
C<${Transfer:HomeBucket}>.



=head2 B<REQUIRED> Role => Str

The IAM role that controls your user's access to your Amazon S3 bucket.
The policies attached to this role will determine the level of access
you want to provide your users when transferring files into and out of
your Amazon S3 bucket or buckets. The IAM role should also contain a
trust relationship that allows the SFTP server to access your resources
when servicing your SFTP user's transfer requests.



=head2 B<REQUIRED> ServerId => Str

A system-assigned unique identifier for an SFTP server instance. This
is the specific SFTP server that you added your user to.



=head2 SshPublicKeyBody => Str

The public portion of the Secure Shall (SSH) key used to authenticate
the user to the SFTP server.



=head2 Tags => ArrayRef[Transfer_Tag]

Key-value pairs that can be used to group and search for users. Tags
are metadata attached to users for any purpose.



=head2 B<REQUIRED> UserName => Str

A unique string that identifies a user and is associated with a server
as specified by the C<ServerId>. This user name must be a minimum of 3
and a maximum of 32 characters long. The following are valid
characters: a-z, A-Z, 0-9, underscore, and hyphen. The user name can't
start with a hyphen.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateUser in L<Paws::Transfer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

