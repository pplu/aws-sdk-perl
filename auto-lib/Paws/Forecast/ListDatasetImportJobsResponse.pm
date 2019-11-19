# Generated from json/callresult_class.tt

package Paws::Forecast::ListDatasetImportJobsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Forecast::Types qw/Forecast_DatasetImportJobSummary/;
  has DatasetImportJobs => (is => 'ro', isa => ArrayRef[Forecast_DatasetImportJobSummary]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'DatasetImportJobs' => {
                                        'class' => 'Paws::Forecast::DatasetImportJobSummary',
                                        'type' => 'ArrayRef[Forecast_DatasetImportJobSummary]'
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

Paws::Forecast::ListDatasetImportJobsResponse

=head1 ATTRIBUTES


=head2 DatasetImportJobs => ArrayRef[Forecast_DatasetImportJobSummary]

An array of objects that summarize each dataset import job's
properties.


=head2 NextToken => Str

If the response is truncated, Amazon Forecast returns this token. To
retrieve the next set of results, use the token in the next request.


=head2 _request_id => Str


=cut

1;