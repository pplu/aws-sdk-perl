
package Paws::Personalize::DescribeSchemaResponse;
  use Moose;
  has Schema => (is => 'ro', isa => 'Paws::Personalize::DatasetSchema', traits => ['NameInRequest'], request_name => 'schema' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::DescribeSchemaResponse

=head1 ATTRIBUTES


=head2 Schema => L<Paws::Personalize::DatasetSchema>

The requested schema.


=head2 _request_id => Str


=cut

1;