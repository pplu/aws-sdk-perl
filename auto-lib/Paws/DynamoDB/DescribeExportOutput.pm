
package Paws::DynamoDB::DescribeExportOutput;
  use Moose;
  has ExportDescription => (is => 'ro', isa => 'Paws::DynamoDB::ExportDescription');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::DescribeExportOutput

=head1 ATTRIBUTES


=head2 ExportDescription => L<Paws::DynamoDB::ExportDescription>

Represents the properties of the export.


=head2 _request_id => Str


=cut

1;