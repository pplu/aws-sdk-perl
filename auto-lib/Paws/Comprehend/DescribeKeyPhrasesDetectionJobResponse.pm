# Generated from json/callresult_class.tt

package Paws::Comprehend::DescribeKeyPhrasesDetectionJobResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Comprehend::Types qw/Comprehend_KeyPhrasesDetectionJobProperties/;
  has KeyPhrasesDetectionJobProperties => (is => 'ro', isa => Comprehend_KeyPhrasesDetectionJobProperties);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'KeyPhrasesDetectionJobProperties' => {
                                                       'class' => 'Paws::Comprehend::KeyPhrasesDetectionJobProperties',
                                                       'type' => 'Comprehend_KeyPhrasesDetectionJobProperties'
                                                     }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::DescribeKeyPhrasesDetectionJobResponse

=head1 ATTRIBUTES


=head2 KeyPhrasesDetectionJobProperties => Comprehend_KeyPhrasesDetectionJobProperties

An object that contains the properties associated with a key phrases
detection job.


=head2 _request_id => Str


=cut

1;