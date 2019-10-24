# Generated from json/callresult_class.tt

package Paws::ECS::DescribeTaskDefinitionResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ECS::Types qw/ECS_Tag ECS_TaskDefinition/;
  has Tags => (is => 'ro', isa => ArrayRef[ECS_Tag]);
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
                                },
               'Tags' => {
                           'class' => 'Paws::ECS::Tag',
                           'type' => 'ArrayRef[ECS_Tag]'
                         }
             },
  'NameInRequest' => {
                       'TaskDefinition' => 'taskDefinition',
                       'Tags' => 'tags'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ECS::DescribeTaskDefinitionResponse

=head1 ATTRIBUTES


=head2 Tags => ArrayRef[ECS_Tag]

The metadata that is applied to the task definition to help you
categorize and organize them. Each tag consists of a key and an
optional value, both of which you define. Tag keys can have a maximum
character length of 128 characters, and tag values can have a maximum
length of 256 characters.


=head2 TaskDefinition => ECS_TaskDefinition

The full task definition description.


=head2 _request_id => Str


=cut

1;