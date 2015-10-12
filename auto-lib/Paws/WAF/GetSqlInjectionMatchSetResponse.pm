
package Paws::WAF::GetSqlInjectionMatchSetResponse;
  use Moose;
  has SqlInjectionMatchSet => (is => 'ro', isa => 'Paws::WAF::SqlInjectionMatchSet');


### main pod documentation begin ###

=head1 NAME

Paws::WAF::GetSqlInjectionMatchSetResponse

=head1 ATTRIBUTES

=head2 SqlInjectionMatchSet => L<Paws::WAF::SqlInjectionMatchSet>

  Information about the SqlInjectionMatchSet that you specified in the
C<GetSqlInjectionMatchSet> request. For more information, see the
following topics:

=over

=item * SqlInjectionMatchSet: Contains C<Name>,
C<SqlInjectionMatchSetId>, and an array of C<SqlInjectionMatchTuple>
objects

=item * SqlInjectionMatchTuple: Each C<SqlInjectionMatchTuple> object
contains C<FieldToMatch> and C<TextTransformation>

=item * FieldToMatch: Contains C<Data> and C<Type>

=back


=cut

1;