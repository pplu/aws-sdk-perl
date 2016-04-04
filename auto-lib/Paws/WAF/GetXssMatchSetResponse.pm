
package Paws::WAF::GetXssMatchSetResponse;
  use Moose;
  has XssMatchSet => (is => 'ro', isa => 'Paws::WAF::XssMatchSet');


### main pod documentation begin ###

=head1 NAME

Paws::WAF::GetXssMatchSetResponse

=head1 ATTRIBUTES


=head2 XssMatchSet => L<Paws::WAF::XssMatchSet>

Information about the XssMatchSet that you specified in the
C<GetXssMatchSet> request. For more information, see the following
topics:

=over

=item * XssMatchSet: Contains C<Name>, C<XssMatchSetId>, and an array
of C<XssMatchTuple> objects

=item * XssMatchTuple: Each C<XssMatchTuple> object contains
C<FieldToMatch> and C<TextTransformation>

=item * FieldToMatch: Contains C<Data> and C<Type>

=back





=cut

1;