
package Paws::SES::ListIdentityPoliciesResponse;
  use Moose;
  has PolicyNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::ListIdentityPoliciesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> PolicyNames => ArrayRef[Str|Undef]

A list of names of policies that apply to the specified identity.


=head2 _request_id => Str


=cut

