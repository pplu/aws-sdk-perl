
package Paws::Transfer::UpdateUser;
  use Moose;
  has HomeDirectory => (is => 'ro', isa => 'Str');
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
      ServerId      => 'MyServerId',
      UserName      => 'MyUserName',
      HomeDirectory => 'MyHomeDirectory',    # OPTIONAL
      Policy        => 'MyPolicy',           # OPTIONAL
      Role          => 'MyRole',             # OPTIONAL
    );

    # Results:
    my $ServerId = $UpdateUserResponse->ServerId;
    my $UserName = $UpdateUserResponse->UserName;

    # Returns a L<Paws::Transfer::UpdateUserResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/transfer/UpdateUser>

=head1 ATTRIBUTES


=head2 HomeDirectory => Str

The HomeDirectory parameter specifies the landing directory (folder)
for a user when they log in to the server using their client. An
example would be: C</home/I<username> >.



=head2 Policy => Str

Allows you to supply a scope-down policy for your user so you can use
the same AWS Identity and Access Management (IAM) role across multiple
users. The policy scopes down users access to portions of your Amazon
S3 bucket. Variables you can use inside this policy include
C<${Transfer:UserName}>, C<${Transfer:HomeDirectory}>, and
C<${Transfer:HomeBucket}>.



=head2 Role => Str

The IAM role that controls your userE<rsquo>s access to your Amazon S3
bucket. The policies attached to this role will determine the level of
access you want to provide your users when transferring files into and
out of your Amazon S3 bucket or buckets. The IAM role should also
contain a trust relationship that allows the Secure File Transfer
Protocol (SFTP) server to access your resources when servicing your
SFTP userE<rsquo>s transfer requests.



=head2 B<REQUIRED> ServerId => Str

A system-assigned unique identifier for an SFTP server instance that
the user account is assigned to.



=head2 B<REQUIRED> UserName => Str

A unique string that identifies a user and is associated with a server
as specified by the ServerId. This is the string that will be used by
your user when they log in to your SFTP server.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateUser in L<Paws::Transfer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

