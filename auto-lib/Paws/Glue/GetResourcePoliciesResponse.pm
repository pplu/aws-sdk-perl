
package Paws::Glue::GetResourcePoliciesResponse;
  use Moose;
  has GetResourcePoliciesResponseList => (is => 'ro', isa => 'ArrayRef[Paws::Glue::GluePolicy]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetResourcePoliciesResponse

=head1 ATTRIBUTES


=head2 GetResourcePoliciesResponseList => ArrayRef[L<Paws::Glue::GluePolicy>]

A list of the individual resource policies and the account-level
resource policy.


=head2 NextToken => Str

A continuation token, if the returned list does not contain the last
resource policy available.


=head2 _request_id => Str


=cut

1;