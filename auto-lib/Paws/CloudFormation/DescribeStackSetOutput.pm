# Generated from callresult_class.tt

package Paws::CloudFormation::DescribeStackSetOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudFormation::Types qw/CloudFormation_StackSet/;
  has StackSet => (is => 'ro', isa => CloudFormation_StackSet);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'StackSet' => {
                               'class' => 'Paws::CloudFormation::StackSet',
                               'type' => 'CloudFormation_StackSet'
                             }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::DescribeStackSetOutput

=head1 ATTRIBUTES


=head2 StackSet => CloudFormation_StackSet

The specified stack set.


=head2 _request_id => Str


=cut

