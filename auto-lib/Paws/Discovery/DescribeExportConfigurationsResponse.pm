
package Paws::Discovery::DescribeExportConfigurationsResponse;
  use Moose;
  has ExportsInfo => (is => 'ro', isa => 'ArrayRef[Paws::Discovery::ExportInfo]', traits => ['NameInRequest'], request_name => 'exportsInfo' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Discovery::DescribeExportConfigurationsResponse

=head1 ATTRIBUTES


=head2 ExportsInfo => ArrayRef[L<Paws::Discovery::ExportInfo>]




=head2 NextToken => Str

The token from the previous call to describe-export-tasks.


=head2 _request_id => Str


=cut

1;