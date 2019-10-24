# Generated from json/callresult_class.tt

package Paws::Personalize::CreateSchemaResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Personalize::Types qw//;
  has SchemaArn => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SchemaArn' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'SchemaArn' => 'schemaArn'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Personalize::CreateSchemaResponse

=head1 ATTRIBUTES


=head2 SchemaArn => Str

The Amazon Resource Name (ARN) of the created schema.


=head2 _request_id => Str


=cut

1;