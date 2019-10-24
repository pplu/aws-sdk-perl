# Generated from json/callresult_class.tt

package Paws::Personalize::CreateDatasetGroupResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Personalize::Types qw//;
  has DatasetGroupArn => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DatasetGroupArn' => {
                                      'type' => 'Str'
                                    }
             },
  'NameInRequest' => {
                       'DatasetGroupArn' => 'datasetGroupArn'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Personalize::CreateDatasetGroupResponse

=head1 ATTRIBUTES


=head2 DatasetGroupArn => Str

The Amazon Resource Name (ARN) of the new dataset group.


=head2 _request_id => Str


=cut

1;