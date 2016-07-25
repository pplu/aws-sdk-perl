
package Paws::SSM::DescribeDocumentPermissionResponse;
  use Moose;
  has AccountIds => (is => 'ro', isa => 'ArrayRef[Str]');


### main pod documentation begin ###

=head1 NAME

Paws::SSM::DescribeDocumentPermissionResponse

=head1 ATTRIBUTES


=head2 AccountIds => ArrayRef[Str]

The account IDs that have permission to use this document. The ID can
be either an AWS account or I<All>.




=cut

1;