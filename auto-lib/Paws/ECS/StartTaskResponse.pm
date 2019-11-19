# Generated from json/callresult_class.tt

package Paws::ECS::StartTaskResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ECS::Types qw/ECS_Failure ECS_Task/;
  has Failures => (is => 'ro', isa => ArrayRef[ECS_Failure]);
  has Tasks => (is => 'ro', isa => ArrayRef[ECS_Task]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Failures' => 'failures',
                       'Tasks' => 'tasks'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Tasks' => {
                            'type' => 'ArrayRef[ECS_Task]',
                            'class' => 'Paws::ECS::Task'
                          },
               'Failures' => {
                               'class' => 'Paws::ECS::Failure',
                               'type' => 'ArrayRef[ECS_Failure]'
                             }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ECS::StartTaskResponse

=head1 ATTRIBUTES


=head2 Failures => ArrayRef[ECS_Failure]

Any failures associated with the call.


=head2 Tasks => ArrayRef[ECS_Task]

A full description of the tasks that were started. Each task that was
successfully placed on your container instances is described.


=head2 _request_id => Str


=cut

1;