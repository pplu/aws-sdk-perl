
package Paws::ElasticTranscoder::ListJobsByPipelineResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ElasticTranscoder::Types qw/ElasticTranscoder_Job/;
  has Jobs => (is => 'ro', isa => ArrayRef[ElasticTranscoder_Job]);
  has NextPageToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextPageToken' => {
                                    'type' => 'Str'
                                  },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Jobs' => {
                           'class' => 'Paws::ElasticTranscoder::Job',
                           'type' => 'ArrayRef[ElasticTranscoder_Job]'
                         }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticTranscoder::ListJobsByPipelineResponse

=head1 ATTRIBUTES


=head2 Jobs => ArrayRef[ElasticTranscoder_Job]

An array of C<Job> objects that are in the specified pipeline.


=head2 NextPageToken => Str

A value that you use to access the second and subsequent pages of
results, if any. When the jobs in the specified pipeline fit on one
page or when you've reached the last page of results, the value of
C<NextPageToken> is C<null>.


=head2 _request_id => Str


=cut

