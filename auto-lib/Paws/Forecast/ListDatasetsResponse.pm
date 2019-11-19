# Generated from json/callresult_class.tt

package Paws::Forecast::ListDatasetsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Forecast::Types qw/Forecast_DatasetSummary/;
  has Datasets => (is => 'ro', isa => ArrayRef[Forecast_DatasetSummary]);
  has NextToken => (is => 'ro', isa => Str);

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
               'Datasets' => {
                               'class' => 'Paws::Forecast::DatasetSummary',
                               'type' => 'ArrayRef[Forecast_DatasetSummary]'
                             }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Forecast::ListDatasetsResponse

=head1 ATTRIBUTES


=head2 Datasets => ArrayRef[Forecast_DatasetSummary]

An array of objects that summarize each dataset's properties.


=head2 NextToken => Str

If the response is truncated, Amazon Forecast returns this token. To
retrieve the next set of results, use the token in the next request.


=head2 _request_id => Str


=cut

1;