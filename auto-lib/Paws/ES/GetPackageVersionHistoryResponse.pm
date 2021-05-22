
package Paws::ES::GetPackageVersionHistoryResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has PackageID => (is => 'ro', isa => 'Str');
  has PackageVersionHistoryList => (is => 'ro', isa => 'ArrayRef[Paws::ES::PackageVersionHistory]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::GetPackageVersionHistoryResponse

=head1 ATTRIBUTES


=head2 NextToken => Str




=head2 PackageID => Str




=head2 PackageVersionHistoryList => ArrayRef[L<Paws::ES::PackageVersionHistory>]

List of C<PackageVersionHistory> objects.


=head2 _request_id => Str


=cut

