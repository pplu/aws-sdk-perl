# Generated from json/callresult_class.tt

package Paws::Personalize::ListDatasetImportJobsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Personalize::Types qw/Personalize_DatasetImportJobSummary/;
  has DatasetImportJobs => (is => 'ro', isa => ArrayRef[Personalize_DatasetImportJobSummary]);
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
               'DatasetImportJobs' => {
                                        'type' => 'ArrayRef[Personalize_DatasetImportJobSummary]',
                                        'class' => 'Paws::Personalize::DatasetImportJobSummary'
                                      }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'DatasetImportJobs' => 'datasetImportJobs'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Personalize::ListDatasetImportJobsResponse

=head1 ATTRIBUTES


=head2 DatasetImportJobs => ArrayRef[Personalize_DatasetImportJobSummary]

The list of dataset import jobs.


=head2 NextToken => Str

A token for getting the next set of dataset import jobs (if they
exist).


=head2 _request_id => Str


=cut

1;