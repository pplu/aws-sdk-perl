
package Paws::CloudDirectory::DeleteSchemaResponse;
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

Paws::CloudDirectory::DeleteSchemaResponse

=head1 ATTRIBUTES


=head2 SchemaArn => Str

The input ARN that is returned as part of the response. For more
information, see arns.


=head2 _request_id => Str


=cut

