# Generated from json/callresult_class.tt

package Paws::Comprehend::ListKeyPhrasesDetectionJobsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Comprehend::Types qw/Comprehend_KeyPhrasesDetectionJobProperties/;
  has KeyPhrasesDetectionJobPropertiesList => (is => 'ro', isa => ArrayRef[Comprehend_KeyPhrasesDetectionJobProperties]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'KeyPhrasesDetectionJobPropertiesList' => {
                                                           'class' => 'Paws::Comprehend::KeyPhrasesDetectionJobProperties',
                                                           'type' => 'ArrayRef[Comprehend_KeyPhrasesDetectionJobProperties]'
                                                         },
               'NextToken' => {
                                'type' => 'Str'
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

Paws::Comprehend::ListKeyPhrasesDetectionJobsResponse

=head1 ATTRIBUTES


=head2 KeyPhrasesDetectionJobPropertiesList => ArrayRef[Comprehend_KeyPhrasesDetectionJobProperties]

A list containing the properties of each job that is returned.


=head2 NextToken => Str

Identifies the next page of results to return.


=head2 _request_id => Str


=cut

1;