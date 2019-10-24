# Generated from json/callresult_class.tt

package Paws::WAFRegional::GetByteMatchSetResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::WAFRegional::Types qw/WAFRegional_ByteMatchSet/;
  has ByteMatchSet => (is => 'ro', isa => WAFRegional_ByteMatchSet);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ByteMatchSet' => {
                                   'class' => 'Paws::WAFRegional::ByteMatchSet',
                                   'type' => 'WAFRegional_ByteMatchSet'
                                 }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::WAFRegional::GetByteMatchSetResponse

=head1 ATTRIBUTES


=head2 ByteMatchSet => WAFRegional_ByteMatchSet

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