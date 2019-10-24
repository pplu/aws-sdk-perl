# Generated from json/callresult_class.tt

package Paws::WAFRegional::GetXssMatchSetResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::WAFRegional::Types qw/WAFRegional_XssMatchSet/;
  has XssMatchSet => (is => 'ro', isa => WAFRegional_XssMatchSet);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'XssMatchSet' => {
                                  'class' => 'Paws::WAFRegional::XssMatchSet',
                                  'type' => 'WAFRegional_XssMatchSet'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::WAFRegional::GetXssMatchSetResponse

=head1 ATTRIBUTES


=head2 XssMatchSet => WAFRegional_XssMatchSet

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