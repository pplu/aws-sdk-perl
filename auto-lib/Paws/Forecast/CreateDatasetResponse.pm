# Generated from json/callresult_class.tt

package Paws::Forecast::CreateDatasetResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Forecast::Types qw//;
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
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Forecast::CreateDatasetResponse

=head1 ATTRIBUTES


=head2 DatasetArn => Str

The Amazon Resource Name (ARN) of the dataset.


=head2 _request_id => Str


=cut

1;