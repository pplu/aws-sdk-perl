# Generated from json/callresult_class.tt

package Paws::DS::StartSchemaExtensionResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DS::Types qw//;
  has SchemaExtensionId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SchemaExtensionId' => {
                                        'type' => 'Str'
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

Paws::DS::StartSchemaExtensionResult

=head1 ATTRIBUTES


=head2 SchemaExtensionId => Str

The identifier of the schema extension that will be applied.


=head2 _request_id => Str


=cut

1;