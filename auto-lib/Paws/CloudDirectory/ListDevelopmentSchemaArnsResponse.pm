
package Paws::CloudDirectory::ListDevelopmentSchemaArnsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has SchemaArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  has _request_id => (is => 'ro', isa => 'Str');
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

