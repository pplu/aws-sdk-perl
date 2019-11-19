# Generated from json/callresult_class.tt

package Paws::Personalize::CreateDatasetImportJobResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Personalize::Types qw//;
  has DatasetImportJobArn => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'DatasetImportJobArn' => 'datasetImportJobArn'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DatasetImportJobArn' => {
                                          'type' => 'Str'
                                        }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Personalize::CreateDatasetImportJobResponse

=head1 ATTRIBUTES


=head2 DatasetImportJobArn => Str

The ARN of the dataset import job.


=head2 _request_id => Str


=cut

1;