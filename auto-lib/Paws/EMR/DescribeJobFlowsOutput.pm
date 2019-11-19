# Generated from json/callresult_class.tt

package Paws::EMR::DescribeJobFlowsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::EMR::Types qw/EMR_JobFlowDetail/;
  has JobFlows => (is => 'ro', isa => ArrayRef[EMR_JobFlowDetail]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'JobFlows' => {
                               'class' => 'Paws::EMR::JobFlowDetail',
                               'type' => 'ArrayRef[EMR_JobFlowDetail]'
                             }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::EMR::DescribeJobFlowsOutput

=head1 ATTRIBUTES


=head2 JobFlows => ArrayRef[EMR_JobFlowDetail]

A list of job flows matching the parameters supplied.


=head2 _request_id => Str


=cut

1;