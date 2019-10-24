# Generated from json/callresult_class.tt

package Paws::ECS::DeregisterTaskDefinitionResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ECS::Types qw/ECS_TaskDefinition/;
  has TaskDefinition => (is => 'ro', isa => ECS_TaskDefinition);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TaskDefinition' => {
                                     'class' => 'Paws::ECS::TaskDefinition',
                                     'type' => 'ECS_TaskDefinition'
                                   },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'TaskDefinition' => 'taskDefinition'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ECS::DeregisterTaskDefinitionResponse

=head1 ATTRIBUTES


=head2 TaskDefinition => ECS_TaskDefinition

The full description of the deregistered task.


=head2 _request_id => Str


=cut

1;