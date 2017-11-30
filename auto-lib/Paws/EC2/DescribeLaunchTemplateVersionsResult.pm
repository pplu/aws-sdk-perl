
package Paws::EC2::DescribeLaunchTemplateVersionsResult;
  use Moose;
  has LaunchTemplateVersions => (is => 'ro', isa => 'ArrayRef[Paws::EC2::LaunchTemplateVersion]', request_name => 'launchTemplateVersionSet', traits => ['NameInRequest',]);
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeLaunchTemplateVersionsResult

=head1 ATTRIBUTES


=head2 LaunchTemplateVersions => ArrayRef[L<Paws::EC2::LaunchTemplateVersion>]

Information about the launch template versions.


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 _request_id => Str


=cut

