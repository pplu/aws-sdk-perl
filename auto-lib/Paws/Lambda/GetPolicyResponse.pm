
package Paws::Lambda::GetPolicyResponse;
  use Moose;
  has Policy => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::GetPolicyResponse

=head1 ATTRIBUTES


=head2 Policy => Str

The resource policy associated with the specified function. The
response returns the same as a string using a backslash ("\") as an
escape character in the JSON.


=head2 _request_id => Str


=cut

