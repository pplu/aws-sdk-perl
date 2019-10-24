
package Paws::EKS::DescribeClusterResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::EKS::Types qw/EKS_Cluster/;
  has Cluster => (is => 'ro', isa => EKS_Cluster);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Cluster' => {
                              'class' => 'Paws::EKS::Cluster',
                              'type' => 'EKS_Cluster'
                            }
             },
  'NameInRequest' => {
                       'Cluster' => 'cluster'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::DescribeClusterResponse

=head1 ATTRIBUTES


=head2 Cluster => EKS_Cluster

The full description of your specified cluster.


=head2 _request_id => Str


=cut

