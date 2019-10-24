
package Paws::ElasticTranscoder::ListPipelinesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ElasticTranscoder::Types qw/ElasticTranscoder_Pipeline/;
  has NextPageToken => (is => 'ro', isa => Str);
  has Pipelines => (is => 'ro', isa => ArrayRef[ElasticTranscoder_Pipeline]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextPageToken' => {
                                    'type' => 'Str'
                                  },
               'Pipelines' => {
                                'class' => 'Paws::ElasticTranscoder::Pipeline',
                                'type' => 'ArrayRef[ElasticTranscoder_Pipeline]'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticTranscoder::ListPipelinesResponse

=head1 ATTRIBUTES


=head2 NextPageToken => Str

A value that you use to access the second and subsequent pages of
results, if any. When the pipelines fit on one page or when you've
reached the last page of results, the value of C<NextPageToken> is
C<null>.


=head2 Pipelines => ArrayRef[ElasticTranscoder_Pipeline]

An array of C<Pipeline> objects.


=head2 _request_id => Str


=cut

