# Generated from callresult_class.tt

package Paws::CloudFormation::DescribeStackResourcesOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CloudFormation::Types qw/CloudFormation_StackResource/;
  has StackResources => (is => 'ro', isa => ArrayRef[CloudFormation_StackResource]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'StackResources' => {
                                     'class' => 'Paws::CloudFormation::StackResource',
                                     'type' => 'ArrayRef[CloudFormation_StackResource]'
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

Paws::CloudFormation::DescribeStackResourcesOutput

=head1 ATTRIBUTES


=head2 StackResources => ArrayRef[CloudFormation_StackResource]

A list of C<StackResource> structures.


=head2 _request_id => Str


=cut

