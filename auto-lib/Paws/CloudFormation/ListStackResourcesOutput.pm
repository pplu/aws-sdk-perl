# Generated from callresult_class.tt

package Paws::CloudFormation::ListStackResourcesOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CloudFormation::Types qw/CloudFormation_StackResourceSummary/;
  has NextToken => (is => 'ro', isa => Str);
  has StackResourceSummaries => (is => 'ro', isa => ArrayRef[CloudFormation_StackResourceSummary]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'StackResourceSummaries' => {
                                             'class' => 'Paws::CloudFormation::StackResourceSummary',
                                             'type' => 'ArrayRef[CloudFormation_StackResourceSummary]'
                                           }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::ListStackResourcesOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

If the output exceeds 1 MB, a string that identifies the next page of
stack resources. If no additional page exists, this value is null.


=head2 StackResourceSummaries => ArrayRef[CloudFormation_StackResourceSummary]

A list of C<StackResourceSummary> structures.


=head2 _request_id => Str


=cut

