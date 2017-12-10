
package Paws::AppSync::GetSchemaCreationStatusResponse;
  use Moose;
  has Details => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'details');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::GetSchemaCreationStatusResponse

=head1 ATTRIBUTES


=head2 Details => Str

Detailed information about the status of the schema creation operation.


=head2 Status => Str

The current state of the schema (PROCESSING, ACTIVE, or DELETING). Once
the schema is in the ACTIVE state, you can add data.

Valid values are: C<"PROCESSING">, C<"ACTIVE">, C<"DELETING">
=head2 _request_id => Str


=cut

