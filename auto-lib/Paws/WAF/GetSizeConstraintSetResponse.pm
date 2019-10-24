# Generated from json/callresult_class.tt

package Paws::WAF::GetSizeConstraintSetResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::WAF::Types qw/WAF_SizeConstraintSet/;
  has SizeConstraintSet => (is => 'ro', isa => WAF_SizeConstraintSet);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'SizeConstraintSet' => {
                                        'class' => 'Paws::WAF::SizeConstraintSet',
                                        'type' => 'WAF_SizeConstraintSet'
                                      }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::WAF::GetSizeConstraintSetResponse

=head1 ATTRIBUTES


=head2 SizeConstraintSet => WAF_SizeConstraintSet

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