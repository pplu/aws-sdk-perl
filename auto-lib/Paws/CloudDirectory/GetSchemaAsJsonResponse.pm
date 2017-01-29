
package Paws::CloudDirectory::GetSchemaAsJsonResponse;
  use Moose;
  has Document => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::GetSchemaAsJsonResponse

=head1 ATTRIBUTES


=head2 Document => Str

The JSON representation of the schema document.


=head2 Name => Str

The name of the retrieved schema.


=head2 _request_id => Str


=cut

