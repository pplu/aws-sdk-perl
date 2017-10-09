
package Paws::Glue::BatchDeleteConnectionResponse;
  use Moose;
  has Errors => (is => 'ro', isa => 'Paws::Glue::ErrorByName');
  has Succeeded => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::BatchDeleteConnectionResponse

=head1 ATTRIBUTES


=head2 Errors => L<Paws::Glue::ErrorByName>

A map of the names of connections that were not successfully deleted to
error details.


=head2 Succeeded => ArrayRef[Str|Undef]

A list of names of the connection definitions that were successfully
deleted.


=head2 _request_id => Str


=cut

1;