# Generated from json/callresult_class.tt

package Paws::Personalize::CreateDatasetResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Personalize::Types qw//;
  has DatasetArn => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DatasetArn' => {
                                 'type' => 'Str'
                               }
             },
  'NameInRequest' => {
                       'DatasetArn' => 'datasetArn'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Personalize::CreateDatasetResponse

=head1 ATTRIBUTES


=head2 DatasetArn => Str

The ARN of the dataset.


=head2 _request_id => Str


=cut

1;