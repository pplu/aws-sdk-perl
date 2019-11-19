# Generated from json/callresult_class.tt

package Paws::ECS::DescribeContainerInstancesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ECS::Types qw/ECS_ContainerInstance ECS_Failure/;
  has ContainerInstances => (is => 'ro', isa => ArrayRef[ECS_ContainerInstance]);
  has Failures => (is => 'ro', isa => ArrayRef[ECS_Failure]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ContainerInstances' => {
                                         'class' => 'Paws::ECS::ContainerInstance',
                                         'type' => 'ArrayRef[ECS_ContainerInstance]'
                                       },
               'Failures' => {
                               'type' => 'ArrayRef[ECS_Failure]',
                               'class' => 'Paws::ECS::Failure'
                             },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Failures' => 'failures',
                       'ContainerInstances' => 'containerInstances'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ECS::DescribeContainerInstancesResponse

=head1 ATTRIBUTES


=head2 ContainerInstances => ArrayRef[ECS_ContainerInstance]

The list of container instances.


=head2 Failures => ArrayRef[ECS_Failure]

Any failures associated with the call.


=head2 _request_id => Str


=cut

1;