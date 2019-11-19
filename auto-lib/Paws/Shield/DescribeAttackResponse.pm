# Generated from json/callresult_class.tt

package Paws::Shield::DescribeAttackResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Shield::Types qw/Shield_AttackDetail/;
  has Attack => (is => 'ro', isa => Shield_AttackDetail);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Attack' => {
                             'class' => 'Paws::Shield::AttackDetail',
                             'type' => 'Shield_AttackDetail'
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

Paws::Shield::DescribeAttackResponse

=head1 ATTRIBUTES


=head2 Attack => Shield_AttackDetail

The attack that is described.


=head2 _request_id => Str


=cut

1;