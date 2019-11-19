
package Paws::EKS::DeleteClusterResponse;
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
                              'type' => 'EKS_Cluster',
                              'class' => 'Paws::EKS::Cluster'
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

Paws::EKS::DeleteClusterResponse

=head1 ATTRIBUTES


=head2 Cluster => EKS_Cluster

The full description of the cluster to delete.


=head2 _request_id => Str


=cut

