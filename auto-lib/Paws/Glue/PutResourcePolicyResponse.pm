
package Paws::Glue::PutResourcePolicyResponse;
  use Moose;
  has PolicyHash => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::PutResourcePolicyResponse

=head1 ATTRIBUTES


=head2 PolicyHash => Str

A hash of the policy that has just been set. This must be included in a
subsequent call that overwrites or updates this policy.


=head2 _request_id => Str


=cut

1;