# Generated from callresult_class.tt

package Paws::CloudFormation::DescribeStackSetOperationOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudFormation::Types qw/CloudFormation_StackSetOperation/;
  has StackSetOperation => (is => 'ro', isa => CloudFormation_StackSetOperation);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'StackSetOperation' => {
                                        'class' => 'Paws::CloudFormation::StackSetOperation',
                                        'type' => 'CloudFormation_StackSetOperation'
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

Paws::CloudFormation::DescribeStackSetOperationOutput

=head1 ATTRIBUTES


=head2 StackSetOperation => CloudFormation_StackSetOperation

The specified stack set operation.


=head2 _request_id => Str


=cut

