# Generated from json/callresult_class.tt

package Paws::ECS::DescribeTaskSetsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ECS::Types qw/ECS_TaskSet ECS_Failure/;
  has Failures => (is => 'ro', isa => ArrayRef[ECS_Failure]);
  has TaskSets => (is => 'ro', isa => ArrayRef[ECS_TaskSet]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TaskSets' => {
                               'type' => 'ArrayRef[ECS_TaskSet]',
                               'class' => 'Paws::ECS::TaskSet'
                             },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Failures' => {
                               'class' => 'Paws::ECS::Failure',
                               'type' => 'ArrayRef[ECS_Failure]'
                             }
             },
  'NameInRequest' => {
                       'TaskSets' => 'taskSets',
                       'Failures' => 'failures'
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