# Generated from callresult_class.tt

package Paws::ELBv2::ModifyRuleOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ELBv2::Types qw/ELBv2_Rule/;
  has Rules => (is => 'ro', isa => ArrayRef[ELBv2_Rule]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Rules' => {
                            'type' => 'ArrayRef[ELBv2_Rule]',
                            'class' => 'Paws::ELBv2::Rule'
                          }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::ModifyRuleOutput

=head1 ATTRIBUTES


=head2 Rules => ArrayRef[ELBv2_Rule]

Information about the modified rule.


=head2 _request_id => Str


=cut

