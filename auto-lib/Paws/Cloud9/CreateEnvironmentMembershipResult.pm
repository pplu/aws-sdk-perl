
package Paws::Cloud9::CreateEnvironmentMembershipResult;
  use Moose;
  has Membership => (is => 'ro', isa => 'Paws::Cloud9::EnvironmentMember', traits => ['NameInRequest'], request_name => 'membership' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Cloud9::CreateEnvironmentMembershipResult

=head1 ATTRIBUTES


=head2 B<REQUIRED> Membership => L<Paws::Cloud9::EnvironmentMember>

Information about the environment member that was added.


=head2 _request_id => Str


=cut

1;