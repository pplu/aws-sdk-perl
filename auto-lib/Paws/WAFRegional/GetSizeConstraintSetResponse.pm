# Generated from json/callresult_class.tt

package Paws::WAFRegional::GetSizeConstraintSetResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::WAFRegional::Types qw/WAFRegional_SizeConstraintSet/;
  has SizeConstraintSet => (is => 'ro', isa => WAFRegional_SizeConstraintSet);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'SizeConstraintSet' => {
                                        'class' => 'Paws::WAFRegional::SizeConstraintSet',
                                        'type' => 'WAFRegional_SizeConstraintSet'
                                      }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::WAFRegional::GetSizeConstraintSetResponse

=head1 ATTRIBUTES


=head2 SizeConstraintSet => WAFRegional_SizeConstraintSet

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