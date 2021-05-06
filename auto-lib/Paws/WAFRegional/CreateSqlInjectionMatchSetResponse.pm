
package Paws::WAFRegional::CreateSqlInjectionMatchSetResponse;
  use Moose;
  has ChangeToken => (is => 'ro', isa => 'Str');
  has SqlInjectionMatchSet => (is => 'ro', isa => 'Paws::WAFRegional::SqlInjectionMatchSet');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WAFRegional::CreateSqlInjectionMatchSetResponse

=head1 ATTRIBUTES


=head2 ChangeToken => Str

The C<ChangeToken> that you used to submit the
C<CreateSqlInjectionMatchSet> request. You can also use this value to
query the status of the request. For more information, see
GetChangeTokenStatus.


=head2 SqlInjectionMatchSet => L<Paws::WAFRegional::SqlInjectionMatchSet>

A SqlInjectionMatchSet.


=head2 _request_id => Str


=cut

1;