
package Paws::FSX::DescribeFileSystemAliasesResponse;
  use Moose;
  has Aliases => (is => 'ro', isa => 'ArrayRef[Paws::FSX::Alias]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::FSX::DescribeFileSystemAliasesResponse

=head1 ATTRIBUTES


=head2 Aliases => ArrayRef[L<Paws::FSX::Alias>]

An array of one or more DNS aliases currently associated with the
specified file system.


=head2 NextToken => Str

Present if there are more DNS aliases than returned in the response
(String). You can use the C<NextToken> value in a later request to
fetch additional descriptions.


=head2 _request_id => Str


=cut

1;