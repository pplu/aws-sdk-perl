
package Paws::CloudDirectory::CreateSchemaResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudDirectory::Types qw//;
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
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::CreateSchemaResponse

=head1 ATTRIBUTES


=head2 SchemaArn => Str

The Amazon Resource Name (ARN) that is associated with the schema. For
more information, see arns.


=head2 _request_id => Str


=cut

