# Generated from json/callresult_class.tt

package Paws::Comprehend::ListSentimentDetectionJobsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Comprehend::Types qw/Comprehend_SentimentDetectionJobProperties/;
  has NextToken => (is => 'ro', isa => Str);
  has SentimentDetectionJobPropertiesList => (is => 'ro', isa => ArrayRef[Comprehend_SentimentDetectionJobProperties]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'SentimentDetectionJobPropertiesList' => {
                                                          'type' => 'ArrayRef[Comprehend_SentimentDetectionJobProperties]',
                                                          'class' => 'Paws::Comprehend::SentimentDetectionJobProperties'
                                                        },
               'NextToken' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::ListSentimentDetectionJobsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

Identifies the next page of results to return.


=head2 SentimentDetectionJobPropertiesList => ArrayRef[Comprehend_SentimentDetectionJobProperties]

A list containing the properties of each job that is returned.


=head2 _request_id => Str


=cut

1;