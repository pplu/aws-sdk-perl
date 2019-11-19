
package Paws::CloudDirectory::ListDevelopmentSchemaArnsResponse;
  use Moo;
  use Types::Standard qw/Str Undef ArrayRef/;
  use Paws::CloudDirectory::Types qw//;
  has NextToken => (is => 'ro', isa => Str);
  has SchemaArns => (is => 'ro', isa => ArrayRef[Str|Undef]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextToken' => {
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

Paws::CloudDirectory::ListDevelopmentSchemaArnsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The pagination token.


=head2 SchemaArns => ArrayRef[Str|Undef]

The ARNs of retrieved development schemas.


=head2 _request_id => Str


=cut

