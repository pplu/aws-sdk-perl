# Generated from json/callresult_class.tt

package Paws::ECS::DescribeTaskSetsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ECS::Types qw/ECS_Failure ECS_TaskSet/;
  has Failures => (is => 'ro', isa => ArrayRef[ECS_Failure]);
  has TaskSets => (is => 'ro', isa => ArrayRef[ECS_TaskSet]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Failures' => {
                               'class' => 'Paws::ECS::Failure',
                               'type' => 'ArrayRef[ECS_Failure]'
                             },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'TaskSets' => {
                               'class' => 'Paws::ECS::TaskSet',
                               'type' => 'ArrayRef[ECS_TaskSet]'
                             }
             },
  'NameInRequest' => {
                       'Failures' => 'failures',
                       'TaskSets' => 'taskSets'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ECS::DescribeTaskSetsResponse

=head1 ATTRIBUTES


=head2 Failures => ArrayRef[ECS_Failure]

Any failures associated with the call.


=head2 TaskSets => ArrayRef[ECS_TaskSet]

The list of task sets described.


=head2 _request_id => Str


=cut

1;