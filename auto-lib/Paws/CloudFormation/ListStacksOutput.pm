# Generated from callresult_class.tt

package Paws::CloudFormation::ListStacksOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CloudFormation::Types qw/CloudFormation_StackSummary/;
  has NextToken => (is => 'ro', isa => Str);
  has StackSummaries => (is => 'ro', isa => ArrayRef[CloudFormation_StackSummary]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'StackSummaries' => {
                                     'type' => 'ArrayRef[CloudFormation_StackSummary]',
                                     'class' => 'Paws::CloudFormation::StackSummary'
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

Paws::CloudFormation::ListStacksOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

If the output exceeds 1 MB in size, a string that identifies the next
page of stacks. If no additional page exists, this value is null.


=head2 StackSummaries => ArrayRef[CloudFormation_StackSummary]

A list of C<StackSummary> structures containing information about the
specified stacks.


=head2 _request_id => Str


=cut

