
package Paws::WAF::GetXssMatchSetResponse;
  use Moose;
  has XssMatchSet => (is => 'ro', isa => 'Paws::WAF::XssMatchSet');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WAF::GetXssMatchSetResponse

=head1 ATTRIBUTES


=head2 XssMatchSet => L<Paws::WAF::XssMatchSet>

Information about the XssMatchSet that you specified in the
C<GetXssMatchSet> request. For more information, see the following
topics:

=over

=item *

XssMatchSet: Contains C<Name>, C<XssMatchSetId>, and an array of
C<XssMatchTuple> objects

=item *

XssMatchTuple: Each C<XssMatchTuple> object contains C<FieldToMatch>
and C<TextTransformation>

=item *

FieldToMatch: Contains C<Data> and C<Type>

=back



=head2 _request_id => Str


=cut

1;