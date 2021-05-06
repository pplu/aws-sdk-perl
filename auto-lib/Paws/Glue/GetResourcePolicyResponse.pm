
package Paws::Glue::GetResourcePolicyResponse;
  use Moose;
  has CreateTime => (is => 'ro', isa => 'Str');
  has PolicyHash => (is => 'ro', isa => 'Str');
  has PolicyInJson => (is => 'ro', isa => 'Str');
  has UpdateTime => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetResourcePolicyResponse

=head1 ATTRIBUTES


=head2 CreateTime => Str

The date and time at which the policy was created.


=head2 PolicyHash => Str

Contains the hash value associated with this policy.


=head2 PolicyInJson => Str

Contains the requested policy document, in JSON format.


=head2 UpdateTime => Str

The date and time at which the policy was last updated.


=head2 _request_id => Str


=cut

1;