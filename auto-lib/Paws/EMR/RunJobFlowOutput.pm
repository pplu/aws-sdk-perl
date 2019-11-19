# Generated from json/callresult_class.tt

package Paws::EMR::RunJobFlowOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::EMR::Types qw//;
  has ClusterArn => (is => 'ro', isa => Str);
  has JobFlowId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ClusterArn' => {
                                 'type' => 'Str'
                               },
               'JobFlowId' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::EMR::RunJobFlowOutput

=head1 ATTRIBUTES


=head2 ClusterArn => Str

The Amazon Resource Name of the cluster.


=head2 JobFlowId => Str

An unique identifier for the job flow.


=head2 _request_id => Str


=cut

1;