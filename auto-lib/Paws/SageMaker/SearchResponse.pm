# Generated from json/callresult_class.tt

package Paws::SageMaker::SearchResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SageMaker::Types qw/SageMaker_SearchRecord/;
  has NextToken => (is => 'ro', isa => Str);
  has Results => (is => 'ro', isa => ArrayRef[SageMaker_SearchRecord]);

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
               'Results' => {
                              'class' => 'Paws::SageMaker::SearchRecord',
                              'type' => 'ArrayRef[SageMaker_SearchRecord]'
                            }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::SearchResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If the result of the previous C<Search> request was truncated, the
response includes a NextToken. To retrieve the next set of results, use
the token in the next request.


=head2 Results => ArrayRef[SageMaker_SearchRecord]

A list of C<SearchResult> objects.


=head2 _request_id => Str


=cut

1;