
package Paws::WAFRegional::CreateSizeConstraintSetResponse;
  use Moose;
  has ChangeToken => (is => 'ro', isa => 'Str');
  has SizeConstraintSet => (is => 'ro', isa => 'Paws::WAFRegional::SizeConstraintSet');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WAFRegional::CreateSizeConstraintSetResponse

=head1 ATTRIBUTES


=head2 ChangeToken => Str

The C<ChangeToken> that you used to submit the
C<CreateSizeConstraintSet> request. You can also use this value to
query the status of the request. For more information, see
GetChangeTokenStatus.


=head2 SizeConstraintSet => L<Paws::WAFRegional::SizeConstraintSet>

A SizeConstraintSet that contains no C<SizeConstraint> objects.


=head2 _request_id => Str


=cut

1;