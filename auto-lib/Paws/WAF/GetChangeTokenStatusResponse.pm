
package Paws::WAF::GetChangeTokenStatusResponse;
  use Moose;
  has ChangeTokenStatus => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WAF::GetChangeTokenStatusResponse

=head1 ATTRIBUTES


=head2 ChangeTokenStatus => Str

The status of the change token.

Valid values are: C<"PROVISIONED">, C<"PENDING">, C<"INSYNC">
=head2 _request_id => Str


=cut

1;