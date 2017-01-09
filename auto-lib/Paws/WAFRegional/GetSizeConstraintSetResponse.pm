
package Paws::WAFRegional::GetSizeConstraintSetResponse;
  use Moose;
  has SizeConstraintSet => (is => 'ro', isa => 'Paws::WAFRegional::SizeConstraintSet');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WAFRegional::GetSizeConstraintSetResponse

=head1 ATTRIBUTES


=head2 SizeConstraintSet => L<Paws::WAFRegional::SizeConstraintSet>

Information about the SizeConstraintSet that you specified in the
C<GetSizeConstraintSet> request. For more information, see the
following topics:

=over

=item *

SizeConstraintSet: Contains C<SizeConstraintSetId>, C<SizeConstraints>,
and C<Name>

=item *

C<SizeConstraints>: Contains an array of SizeConstraint objects. Each
C<SizeConstraint> object contains FieldToMatch, C<TextTransformation>,
C<ComparisonOperator>, and C<Size>

=item *

FieldToMatch: Contains C<Data> and C<Type>

=back



=head2 _request_id => Str


=cut

1;