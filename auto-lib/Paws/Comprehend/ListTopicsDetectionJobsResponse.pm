# Generated from json/callresult_class.tt

package Paws::Comprehend::ListTopicsDetectionJobsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Comprehend::Types qw/Comprehend_TopicsDetectionJobProperties/;
  has NextToken => (is => 'ro', isa => Str);
  has TopicsDetectionJobPropertiesList => (is => 'ro', isa => ArrayRef[Comprehend_TopicsDetectionJobProperties]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'TopicsDetectionJobPropertiesList' => {
                                                       'type' => 'ArrayRef[Comprehend_TopicsDetectionJobProperties]',
                                                       'class' => 'Paws::Comprehend::TopicsDetectionJobProperties'
                                                     }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::ListTopicsDetectionJobsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

Identifies the next page of results to return.


=head2 TopicsDetectionJobPropertiesList => ArrayRef[Comprehend_TopicsDetectionJobProperties]

A list containing the properties of each job that is returned.


=head2 _request_id => Str


=cut

1;