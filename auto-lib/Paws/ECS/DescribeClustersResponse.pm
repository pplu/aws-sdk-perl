# Generated from json/callresult_class.tt

package Paws::ECS::DescribeClustersResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ECS::Types qw/ECS_Failure ECS_Cluster/;
  has Clusters => (is => 'ro', isa => ArrayRef[ECS_Cluster]);
  has Failures => (is => 'ro', isa => ArrayRef[ECS_Failure]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Failures' => {
                               'class' => 'Paws::ECS::Failure',
                               'type' => 'ArrayRef[ECS_Failure]'
                             },
               'Clusters' => {
                               'class' => 'Paws::ECS::Cluster',
                               'type' => 'ArrayRef[ECS_Cluster]'
                             },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Failures' => 'failures',
                       'Clusters' => 'clusters'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ECS::DescribeClustersResponse

=head1 ATTRIBUTES


=head2 Clusters => ArrayRef[ECS_Cluster]

The list of clusters.


=head2 Failures => ArrayRef[ECS_Failure]

Any failures associated with the call.


=head2 _request_id => Str


=cut

1;