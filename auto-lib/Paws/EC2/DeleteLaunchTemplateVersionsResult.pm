
package Paws::EC2::DeleteLaunchTemplateVersionsResult;
  use Moose;
  has SuccessfullyDeletedLaunchTemplateVersions => (is => 'ro', isa => 'ArrayRef[Paws::EC2::DeleteLaunchTemplateVersionsResponseSuccessItem]', request_name => 'successfullyDeletedLaunchTemplateVersionSet', traits => ['NameInRequest',]);
  has UnsuccessfullyDeletedLaunchTemplateVersions => (is => 'ro', isa => 'ArrayRef[Paws::EC2::DeleteLaunchTemplateVersionsResponseErrorItem]', request_name => 'unsuccessfullyDeletedLaunchTemplateVersionSet', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DeleteLaunchTemplateVersionsResult

=head1 ATTRIBUTES


=head2 SuccessfullyDeletedLaunchTemplateVersions => ArrayRef[L<Paws::EC2::DeleteLaunchTemplateVersionsResponseSuccessItem>]

Information about the launch template versions that were successfully
deleted.


=head2 UnsuccessfullyDeletedLaunchTemplateVersions => ArrayRef[L<Paws::EC2::DeleteLaunchTemplateVersionsResponseErrorItem>]

Information about the launch template versions that could not be
deleted.


=head2 _request_id => Str


=cut

