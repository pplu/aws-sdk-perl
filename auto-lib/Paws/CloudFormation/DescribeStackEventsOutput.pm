# Generated from callresult_class.tt

package Paws::CloudFormation::DescribeStackEventsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CloudFormation::Types qw/CloudFormation_StackEvent/;
  has NextToken => (is => 'ro', isa => Str);
  has StackEvents => (is => 'ro', isa => ArrayRef[CloudFormation_StackEvent]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'StackEvents' => {
                                  'class' => 'Paws::CloudFormation::StackEvent',
                                  'type' => 'ArrayRef[CloudFormation_StackEvent]'
                                }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::DescribeStackEventsOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

If the output exceeds 1 MB in size, a string that identifies the next
page of events. If no additional page exists, this value is null.


=head2 StackEvents => ArrayRef[CloudFormation_StackEvent]

A list of C<StackEvents> structures.


=head2 _request_id => Str


=cut

