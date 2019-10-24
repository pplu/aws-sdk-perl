# Generated from json/callresult_class.tt

package Paws::Comprehend::DescribeTopicsDetectionJobResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Comprehend::Types qw/Comprehend_TopicsDetectionJobProperties/;
  has TopicsDetectionJobProperties => (is => 'ro', isa => Comprehend_TopicsDetectionJobProperties);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TopicsDetectionJobProperties' => {
                                                   'class' => 'Paws::Comprehend::TopicsDetectionJobProperties',
                                                   'type' => 'Comprehend_TopicsDetectionJobProperties'
                                                 },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::DescribeTopicsDetectionJobResponse

=head1 ATTRIBUTES


=head2 TopicsDetectionJobProperties => Comprehend_TopicsDetectionJobProperties

The list of properties for the requested job.


=head2 _request_id => Str


=cut

1;