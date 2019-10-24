# Generated from json/callresult_class.tt

package Paws::Personalize::DescribeDatasetImportJobResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Personalize::Types qw/Personalize_DatasetImportJob/;
  has DatasetImportJob => (is => 'ro', isa => Personalize_DatasetImportJob);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DatasetImportJob' => {
                                       'class' => 'Paws::Personalize::DatasetImportJob',
                                       'type' => 'Personalize_DatasetImportJob'
                                     },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'DatasetImportJob' => 'datasetImportJob'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Personalize::DescribeDatasetImportJobResponse

=head1 ATTRIBUTES


=head2 DatasetImportJob => Personalize_DatasetImportJob

Information about the dataset import job, including the status.

The status is one of the following values:

=over

=item *

CREATE PENDING

=item *

CREATE IN_PROGRESS

=item *

ACTIVE

=item *

CREATE FAILED

=back



=head2 _request_id => Str


=cut

1;