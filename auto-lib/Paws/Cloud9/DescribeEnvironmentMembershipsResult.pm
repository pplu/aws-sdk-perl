
package Paws::Cloud9::DescribeEnvironmentMembershipsResult;
  use Moose;
  has Memberships => (is => 'ro', isa => 'ArrayRef[Paws::Cloud9::EnvironmentMember]', traits => ['NameInRequest'], request_name => 'memberships' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Cloud9::DescribeEnvironmentMembershipsResult

=head1 ATTRIBUTES


=head2 Memberships => ArrayRef[L<Paws::Cloud9::EnvironmentMember>]

Information about the environment members for the environment.


=head2 NextToken => Str

If there are more than 25 items in the list, only the first 25 items
are returned, along with a unique string called a I<next token>. To get
the next batch of items in the list, call this operation again, adding
the next token to the call.


=head2 _request_id => Str


=cut

1;