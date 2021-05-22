
package Paws::EC2::CreateLaunchTemplateVersionResult;
  use Moose;
  has LaunchTemplateVersion => (is => 'ro', isa => 'Paws::EC2::LaunchTemplateVersion', request_name => 'launchTemplateVersion', traits => ['NameInRequest',]);
  has Warning => (is => 'ro', isa => 'Paws::EC2::ValidationWarning', request_name => 'warning', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateLaunchTemplateVersionResult

=head1 ATTRIBUTES


=head2 LaunchTemplateVersion => L<Paws::EC2::LaunchTemplateVersion>

Information about the launch template version.


=head2 Warning => L<Paws::EC2::ValidationWarning>

If the new version of the launch template contains parameters or
parameter combinations that are not valid, an error code and an error
message are returned for each issue that's found.


=head2 _request_id => Str


=cut

