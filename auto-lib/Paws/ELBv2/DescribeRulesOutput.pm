# Generated from callresult_class.tt

package Paws::ELBv2::DescribeRulesOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ELBv2::Types qw/ELBv2_Rule/;
  has NextMarker => (is => 'ro', isa => Str);
  has Rules => (is => 'ro', isa => ArrayRef[ELBv2_Rule]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Rules' => {
                            'class' => 'Paws::ELBv2::Rule',
                            'type' => 'ArrayRef[ELBv2_Rule]'
                          },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextMarker' => {
                                 'type' => 'Str'
                               }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::DescribeRulesOutput

=head1 ATTRIBUTES


=head2 NextMarker => Str

If there are additional results, this is the marker for the next set of
results. Otherwise, this is null.


=head2 Rules => ArrayRef[ELBv2_Rule]

Information about the rules.


=head2 _request_id => Str


=cut

