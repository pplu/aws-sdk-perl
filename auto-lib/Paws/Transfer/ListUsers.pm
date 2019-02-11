
package Paws::Transfer::ListUsers;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ServerId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListUsers');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Transfer::ListUsersResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::ListUsers - Arguments for method ListUsers on L<Paws::Transfer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListUsers on the
L<AWS Transfer for SFTP|Paws::Transfer> service. Use the attributes of this class
as arguments to method ListUsers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListUsers.

=head1 SYNOPSIS

    my $transfer = Paws->service('Transfer');
    my $ListUsersResponse = $transfer->ListUsers(
      ServerId   => 'MyServerId',
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListUsersResponse->NextToken;
    my $ServerId  = $ListUsersResponse->ServerId;
    my $Users     = $ListUsersResponse->Users;

    # Returns a L<Paws::Transfer::ListUsersResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/transfer/ListUsers>

=head1 ATTRIBUTES


=head2 MaxResults => Int

Specifies the number of users to return as a response to the
C<ListUsers> request.



=head2 NextToken => Str

When you can get additional results from the C<ListUsers>ListUsers
call, a C<NextToken> parameter is returned in the output. You can then
pass in a subsequent command the C<NextToken> parameter to continue
listing additional users.



=head2 B<REQUIRED> ServerId => Str

A system-assigned unique identifier for a Secure File Transfer Protocol
(SFTP) server that has users are assigned to it.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListUsers in L<Paws::Transfer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

