
package Paws::WAFRegional::GetSqlInjectionMatchSetResponse;
  use Moose;
  has SqlInjectionMatchSet => (is => 'ro', isa => 'Paws::WAFRegional::SqlInjectionMatchSet');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WAFRegional::GetSqlInjectionMatchSetResponse

=head1 ATTRIBUTES


=head2 SqlInjectionMatchSet => L<Paws::WAFRegional::SqlInjectionMatchSet>

Information about the SqlInjectionMatchSet that you specified in the
C<GetSqlInjectionMatchSet> request. For more information, see the
following topics:

=over

=item *

SqlInjectionMatchSet: Contains C<Name>, C<SqlInjectionMatchSetId>, and
an array of C<SqlInjectionMatchTuple> objects

=item *

SqlInjectionMatchTuple: Each C<SqlInjectionMatchTuple> object contains
C<FieldToMatch> and C<TextTransformation>

=item *

FieldToMatch: Contains C<Data> and C<Type>

=back



=head2 _request_id => Str


=cut

1;