
package Paws::EC2::CreateLaunchTemplateVersionResult;
  use Moose;
  has LaunchTemplateVersion => (is => 'ro', isa => 'Paws::EC2::LaunchTemplateVersion', request_name => 'launchTemplateVersion', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateLaunchTemplateVersionResult

=head1 ATTRIBUTES


=head2 LaunchTemplateVersion => L<Paws::EC2::LaunchTemplateVersion>

Information about the launch template version.


=head2 _request_id => Str


=cut

