# Generated from json/callresult_class.tt

package Paws::Comprehend::DescribeDominantLanguageDetectionJobResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Comprehend::Types qw/Comprehend_DominantLanguageDetectionJobProperties/;
  has DominantLanguageDetectionJobProperties => (is => 'ro', isa => Comprehend_DominantLanguageDetectionJobProperties);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DominantLanguageDetectionJobProperties' => {
                                                             'type' => 'Comprehend_DominantLanguageDetectionJobProperties',
                                                             'class' => 'Paws::Comprehend::DominantLanguageDetectionJobProperties'
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

Paws::Comprehend::DescribeDominantLanguageDetectionJobResponse

=head1 ATTRIBUTES


=head2 DominantLanguageDetectionJobProperties => Comprehend_DominantLanguageDetectionJobProperties

An object that contains the properties associated with a dominant
language detection job.


=head2 _request_id => Str


=cut

1;