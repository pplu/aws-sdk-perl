# Generated from json/callresult_class.tt

package Paws::ECS::RegisterContainerInstanceResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ECS::Types qw/ECS_ContainerInstance/;
  has ContainerInstance => (is => 'ro', isa => ECS_ContainerInstance);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ContainerInstance' => {
                                        'class' => 'Paws::ECS::ContainerInstance',
                                        'type' => 'ECS_ContainerInstance'
                                      }
             },
  'NameInRequest' => {
                       'ContainerInstance' => 'containerInstance'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ECS::RegisterContainerInstanceResponse

=head1 ATTRIBUTES


=head2 ContainerInstance => ECS_ContainerInstance

The container instance that was registered.


=head2 _request_id => Str


=cut

1;