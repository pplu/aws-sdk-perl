# Generated from json/callresult_class.tt

package Paws::EMR::DescribeClusterOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::EMR::Types qw/EMR_Cluster/;
  has Cluster => (is => 'ro', isa => EMR_Cluster);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Cluster' => {
                              'class' => 'Paws::EMR::Cluster',
                              'type' => 'EMR_Cluster'
                            }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::EMR::DescribeClusterOutput

=head1 ATTRIBUTES


=head2 Cluster => EMR_Cluster

This output contains the details for the requested cluster.


=head2 _request_id => Str


=cut

1;