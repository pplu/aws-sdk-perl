
package Paws::Transfer::DeleteUser;
  use Moose;
  has ServerId => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteUser');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::DeleteUser - Arguments for method DeleteUser on L<Paws::Transfer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteUser on the
L<AWS Transfer for SFTP|Paws::Transfer> service. Use the attributes of this class
as arguments to method DeleteUser.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteUser.

=head1 SYNOPSIS

    my $transfer = Paws->service('Transfer');
    $transfer->DeleteUser(
      ServerId => 'MyServerId',
      UserName => 'MyUserName',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/transfer/DeleteUser>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ServerId => Str

A system-assigned unique identifier for an SFTP server instance that
has the user assigned to it.



=head2 B<REQUIRED> UserName => Str

A unique string that identifies a user that is being deleted from the
server.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteUser in L<Paws::Transfer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

