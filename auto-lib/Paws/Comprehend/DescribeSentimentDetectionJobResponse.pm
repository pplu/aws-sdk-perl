# Generated from json/callresult_class.tt

package Paws::Comprehend::DescribeSentimentDetectionJobResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Comprehend::Types qw/Comprehend_SentimentDetectionJobProperties/;
  has SentimentDetectionJobProperties => (is => 'ro', isa => Comprehend_SentimentDetectionJobProperties);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SentimentDetectionJobProperties' => {
                                                      'type' => 'Comprehend_SentimentDetectionJobProperties',
                                                      'class' => 'Paws::Comprehend::SentimentDetectionJobProperties'
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

Paws::Comprehend::DescribeSentimentDetectionJobResponse

=head1 ATTRIBUTES


=head2 SentimentDetectionJobProperties => Comprehend_SentimentDetectionJobProperties

An object that contains the properties associated with a sentiment
detection job.


=head2 _request_id => Str


=cut

1;