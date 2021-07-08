
package Paws::DynamoDB::ListExportsOutput;
  use Moose;
  has ExportSummaries => (is => 'ro', isa => 'ArrayRef[Paws::DynamoDB::ExportSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::ListExportsOutput

=head1 ATTRIBUTES


=head2 ExportSummaries => ArrayRef[L<Paws::DynamoDB::ExportSummary>]

A list of C<ExportSummary> objects.


=head2 NextToken => Str

If this value is returned, there are additional results to be
displayed. To retrieve them, call C<ListExports> again, with
C<NextToken> set to this value.


=head2 _request_id => Str


=cut

1;