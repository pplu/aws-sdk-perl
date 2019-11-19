# Generated from json/callresult_class.tt

package Paws::ECS::RegisterTaskDefinitionResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ECS::Types qw/ECS_TaskDefinition ECS_Tag/;
  has Tags => (is => 'ro', isa => ArrayRef[ECS_Tag]);
  has TaskDefinition => (is => 'ro', isa => ECS_TaskDefinition);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Tags' => 'tags',
                       'TaskDefinition' => 'taskDefinition'
                     },
  'types' => {
               'TaskDefinition' => {
                                     'class' => 'Paws::ECS::TaskDefinition',
                                     'type' => 'ECS_TaskDefinition'
                                   },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Tags' => {
                           'type' => 'ArrayRef[ECS_Tag]',
                           'class' => 'Paws::ECS::Tag'
                         }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ECS::RegisterTaskDefinitionResponse

=head1 ATTRIBUTES


=head2 Tags => ArrayRef[ECS_Tag]

The list of tags associated with the task definition.


=head2 TaskDefinition => ECS_TaskDefinition

The full description of the registered task definition.


=head2 _request_id => Str


=cut

1;