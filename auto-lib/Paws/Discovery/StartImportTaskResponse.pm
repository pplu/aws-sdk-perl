
package Paws::Discovery::StartImportTaskResponse;
  use Moose;
  has Task => (is => 'ro', isa => 'Paws::Discovery::ImportTask', traits => ['NameInRequest'], request_name => 'task' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Discovery::StartImportTaskResponse

=head1 ATTRIBUTES


=head2 Task => L<Paws::Discovery::ImportTask>

An array of information related to the import task request including
status information, times, IDs, the Amazon S3 Object URL for the import
file, and more.


=head2 _request_id => Str


=cut

1;