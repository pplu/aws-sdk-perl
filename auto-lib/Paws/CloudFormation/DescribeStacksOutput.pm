# Generated from callresult_class.tt

package Paws::CloudFormation::DescribeStacksOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CloudFormation::Types qw/CloudFormation_Stack/;
  has NextToken => (is => 'ro', isa => Str);
  has Stacks => (is => 'ro', isa => ArrayRef[CloudFormation_Stack]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Stacks' => {
                             'class' => 'Paws::CloudFormation::Stack',
                             'type' => 'ArrayRef[CloudFormation_Stack]'
                           },
               'NextToken' => {
                                'type' => 'Str'
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

Paws::CloudFormation::DescribeStacksOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

If the output exceeds 1 MB in size, a string that identifies the next
page of stacks. If no additional page exists, this value is null.


=head2 Stacks => ArrayRef[CloudFormation_Stack]

A list of stack structures.


=head2 _request_id => Str


=cut

