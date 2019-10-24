
package Paws::CloudDirectory::ListPublishedSchemaArnsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::CloudDirectory::Types qw//;
  has NextToken => (is => 'ro', isa => Str);
  has SchemaArns => (is => 'ro', isa => ArrayRef[Str|Undef]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'SchemaArns' => {
                                 'type' => 'ArrayRef[Str|Undef]'
                               }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::ListPublishedSchemaArnsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The pagination token.


=head2 SchemaArns => ArrayRef[Str|Undef]

The ARNs of published schemas.


=head2 _request_id => Str


=cut

