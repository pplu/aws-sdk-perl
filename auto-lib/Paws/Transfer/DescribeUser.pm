
package Paws::Transfer::DescribeUser;
  use Moose;
  has ServerId => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeUser');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Transfer::DescribeUserResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::DescribeUser - Arguments for method DescribeUser on L<Paws::Transfer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeUser on the
L<AWS Transfer for SFTP|Paws::Transfer> service. Use the attributes of this class
as arguments to method DescribeUser.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeUser.

=head1 SYNOPSIS

    my $transfer = Paws->service('Transfer');
    my $DescribeUserResponse = $transfer->DescribeUser(
      ServerId => 'MyServerId',
      UserName => 'MyUserName',

    );

    # Results:
    my $ServerId = $DescribeUserResponse->ServerId;
    my $User     = $DescribeUserResponse->User;

    # Returns a L<Paws::Transfer::DescribeUserResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/transfer/DescribeUser>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ServerId => Str

A system-assigned unique identifier for an SFTP server that has this
user assigned.



=head2 B<REQUIRED> UserName => Str

The name of the user assigned to one or more servers. User names are
part of the sign-in credentials to use the AWS Transfer service and
perform file transfer tasks.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeUser in L<Paws::Transfer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

