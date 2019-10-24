# Generated from json/callresult_class.tt

package Paws::ECS::DeleteClusterResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ECS::Types qw/ECS_Cluster/;
  has Cluster => (is => 'ro', isa => ECS_Cluster);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Cluster' => {
                              'class' => 'Paws::ECS::Cluster',
                              'type' => 'ECS_Cluster'
                            }
             },
  'NameInRequest' => {
                       'Cluster' => 'cluster'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ECS::DeleteClusterResponse

=head1 ATTRIBUTES


=head2 Cluster => ECS_Cluster

The full description of the deleted cluster.


=head2 _request_id => Str


=cut

1;