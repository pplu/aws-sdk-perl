# Generated from json/callresult_class.tt

package Paws::Comprehend::ListDominantLanguageDetectionJobsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Comprehend::Types qw/Comprehend_DominantLanguageDetectionJobProperties/;
  has DominantLanguageDetectionJobPropertiesList => (is => 'ro', isa => ArrayRef[Comprehend_DominantLanguageDetectionJobProperties]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'DominantLanguageDetectionJobPropertiesList' => {
                                                                 'class' => 'Paws::Comprehend::DominantLanguageDetectionJobProperties',
                                                                 'type' => 'ArrayRef[Comprehend_DominantLanguageDetectionJobProperties]'
                                                               }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::ListDominantLanguageDetectionJobsResponse

=head1 ATTRIBUTES


=head2 DominantLanguageDetectionJobPropertiesList => ArrayRef[Comprehend_DominantLanguageDetectionJobProperties]

A list containing the properties of each job that is returned.


=head2 NextToken => Str

Identifies the next page of results to return.


=head2 _request_id => Str


=cut

1;