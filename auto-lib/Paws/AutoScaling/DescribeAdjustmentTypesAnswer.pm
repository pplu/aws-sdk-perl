# Generated from callresult_class.tt

package Paws::AutoScaling::DescribeAdjustmentTypesAnswer;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::AutoScaling::Types qw/AutoScaling_AdjustmentType/;
  has AdjustmentTypes => (is => 'ro', isa => ArrayRef[AutoScaling_AdjustmentType]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'AdjustmentTypes' => {
                                      'class' => 'Paws::AutoScaling::AdjustmentType',
                                      'type' => 'ArrayRef[AutoScaling_AdjustmentType]'
                                    },
               '_request_id' => {
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

Paws::AutoScaling::DescribeAdjustmentTypesAnswer

=head1 ATTRIBUTES


=head2 AdjustmentTypes => ArrayRef[AutoScaling_AdjustmentType]

The policy adjustment types.


=head2 _request_id => Str


=cut

