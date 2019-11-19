# Generated from callresult_class.tt

package Paws::CloudFormation::DescribeStackResourceOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudFormation::Types qw/CloudFormation_StackResourceDetail/;
  has StackResourceDetail => (is => 'ro', isa => CloudFormation_StackResourceDetail);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'StackResourceDetail' => {
                                          'class' => 'Paws::CloudFormation::StackResourceDetail',
                                          'type' => 'CloudFormation_StackResourceDetail'
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

Paws::CloudFormation::DescribeStackResourceOutput

=head1 ATTRIBUTES


=head2 StackResourceDetail => CloudFormation_StackResourceDetail

A C<StackResourceDetail> structure containing the description of the
specified resource in the specified stack.


=head2 _request_id => Str


=cut

