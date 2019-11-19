# Generated from json/callresult_class.tt

package Paws::WAF::GetXssMatchSetResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::WAF::Types qw/WAF_XssMatchSet/;
  has XssMatchSet => (is => 'ro', isa => WAF_XssMatchSet);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'XssMatchSet' => {
                                  'type' => 'WAF_XssMatchSet',
                                  'class' => 'Paws::WAF::XssMatchSet'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::WAF::GetXssMatchSetResponse

=head1 ATTRIBUTES


=head2 XssMatchSet => WAF_XssMatchSet

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