# Generated from json/callresult_class.tt

package Paws::ECS::StopTaskResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ECS::Types qw/ECS_Task/;
  has Task => (is => 'ro', isa => ECS_Task);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Task' => {
                           'class' => 'Paws::ECS::Task',
                           'type' => 'ECS_Task'
                         }
             },
  'NameInRequest' => {
                       'Task' => 'task'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ECS::StopTaskResponse

=head1 ATTRIBUTES


=head2 Task => ECS_Task

The task that was stopped.


=head2 _request_id => Str


=cut

1;