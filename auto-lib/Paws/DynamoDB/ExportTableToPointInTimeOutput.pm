
package Paws::DynamoDB::ExportTableToPointInTimeOutput;
  use Moose;
  has ExportDescription => (is => 'ro', isa => 'Paws::DynamoDB::ExportDescription');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::ExportTableToPointInTimeOutput

=head1 ATTRIBUTES


=head2 ExportDescription => L<Paws::DynamoDB::ExportDescription>

Contains a description of the table export.


=head2 _request_id => Str


=cut

1;