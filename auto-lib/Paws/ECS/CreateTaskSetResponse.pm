# Generated from json/callresult_class.tt

package Paws::ECS::CreateTaskSetResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ECS::Types qw/ECS_TaskSet/;
  has TaskSet => (is => 'ro', isa => ECS_TaskSet);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TaskSet' => {
                              'type' => 'ECS_TaskSet',
                              'class' => 'Paws::ECS::TaskSet'
                            },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'TaskSet' => 'taskSet'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ECS::CreateTaskSetResponse

=head1 ATTRIBUTES


=head2 TaskSet => ECS_TaskSet




=head2 _request_id => Str


=cut

1;