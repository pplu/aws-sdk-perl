
package Paws::Schemas::DescribeCodeBindingResponse;
  use Moose;
  has CreationDate => (is => 'ro', isa => 'Str');
  has LastModified => (is => 'ro', isa => 'Str');
  has SchemaVersion => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Schemas::DescribeCodeBindingResponse

=head1 ATTRIBUTES


=head2 CreationDate => Str

The time and date that the code binding was created.


=head2 LastModified => Str

The date and time that code bindings were modified.


=head2 SchemaVersion => Str

The version number of the schema.


=head2 Status => Str

The current status of code binding generation.

Valid values are: C<"CREATE_IN_PROGRESS">, C<"CREATE_COMPLETE">, C<"CREATE_FAILED">
=head2 _request_id => Str


=cut

