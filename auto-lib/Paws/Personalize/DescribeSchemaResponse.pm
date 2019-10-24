# Generated from json/callresult_class.tt

package Paws::Personalize::DescribeSchemaResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Personalize::Types qw/Personalize_DatasetSchema/;
  has Schema => (is => 'ro', isa => Personalize_DatasetSchema);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Schema' => {
                             'class' => 'Paws::Personalize::DatasetSchema',
                             'type' => 'Personalize_DatasetSchema'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Schema' => 'schema'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Personalize::DescribeSchemaResponse

=head1 ATTRIBUTES


=head2 Schema => Personalize_DatasetSchema

The requested schema.


=head2 _request_id => Str


=cut

1;