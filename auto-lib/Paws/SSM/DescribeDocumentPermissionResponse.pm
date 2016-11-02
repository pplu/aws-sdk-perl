
package Paws::SSM::DescribeDocumentPermissionResponse;
  use Moose;
  has AccountIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::DescribeDocumentPermissionResponse

=head1 ATTRIBUTES


=head2 AccountIds => ArrayRef[Str|Undef]

The account IDs that have permission to use this document. The ID can
be either an AWS account or I<All>.


=head2 _request_id => Str


=cut

1;