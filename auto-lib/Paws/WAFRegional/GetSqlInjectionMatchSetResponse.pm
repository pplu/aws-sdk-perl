# Generated from json/callresult_class.tt

package Paws::WAFRegional::GetSqlInjectionMatchSetResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::WAFRegional::Types qw/WAFRegional_SqlInjectionMatchSet/;
  has SqlInjectionMatchSet => (is => 'ro', isa => WAFRegional_SqlInjectionMatchSet);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'SqlInjectionMatchSet' => {
                                           'class' => 'Paws::WAFRegional::SqlInjectionMatchSet',
                                           'type' => 'WAFRegional_SqlInjectionMatchSet'
                                         }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::WAFRegional::GetSqlInjectionMatchSetResponse

=head1 ATTRIBUTES


=head2 SqlInjectionMatchSet => WAFRegional_SqlInjectionMatchSet

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