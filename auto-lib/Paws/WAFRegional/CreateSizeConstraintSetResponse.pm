# Generated from json/callresult_class.tt

package Paws::WAFRegional::CreateSizeConstraintSetResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::WAFRegional::Types qw/WAFRegional_SizeConstraintSet/;
  has ChangeToken => (is => 'ro', isa => Str);
  has SizeConstraintSet => (is => 'ro', isa => WAFRegional_SizeConstraintSet);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ChangeToken' => {
                                  'type' => 'Str'
                                },
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

Paws::WAFRegional::CreateSizeConstraintSetResponse

=head1 ATTRIBUTES


=head2 ChangeToken => Str

The C<ChangeToken> that you used to submit the
C<CreateSizeConstraintSet> request. You can also use this value to
query the status of the request. For more information, see
GetChangeTokenStatus.


=head2 SizeConstraintSet => WAFRegional_SizeConstraintSet

A SizeConstraintSet that contains no C<SizeConstraint> objects.


=head2 _request_id => Str


=cut

1;