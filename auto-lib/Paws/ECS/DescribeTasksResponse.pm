# Generated from json/callresult_class.tt

package Paws::ECS::DescribeTasksResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ECS::Types qw/ECS_Failure ECS_Task/;
  has Failures => (is => 'ro', isa => ArrayRef[ECS_Failure]);
  has Tasks => (is => 'ro', isa => ArrayRef[ECS_Task]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Tasks' => {
                            'class' => 'Paws::ECS::Task',
                            'type' => 'ArrayRef[ECS_Task]'
                          },
               'Failures' => {
                               'class' => 'Paws::ECS::Failure',
                               'type' => 'ArrayRef[ECS_Failure]'
                             },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Tasks' => 'tasks',
                       'Failures' => 'failures'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ECS::DescribeTasksResponse

=head1 ATTRIBUTES


=head2 Failures => ArrayRef[ECS_Failure]

Any failures associated with the call.


=head2 Tasks => ArrayRef[ECS_Task]

The list of tasks.


=head2 _request_id => Str


=cut

1;