
package Paws::WAF::GetByteMatchSetResponse;
  use Moose;
  has ByteMatchSet => (is => 'ro', isa => 'Paws::WAF::ByteMatchSet');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WAF::GetByteMatchSetResponse

=head1 ATTRIBUTES


=head2 ByteMatchSet => L<Paws::WAF::ByteMatchSet>

Information about the ByteMatchSet that you specified in the
C<GetByteMatchSet> request. For more information, see the following
topics:

=over

=item *

ByteMatchSet: Contains C<ByteMatchSetId>, C<ByteMatchTuples>, and
C<Name>

=item *

C<ByteMatchTuples>: Contains an array of ByteMatchTuple objects. Each
C<ByteMatchTuple> object contains FieldToMatch,
C<PositionalConstraint>, C<TargetString>, and C<TextTransformation>

=item *

FieldToMatch: Contains C<Data> and C<Type>

=back



=head2 _request_id => Str


=cut

1;