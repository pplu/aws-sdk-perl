
package Paws::EC2::ModifyLaunchTemplateResult;
  use Moose;
  has LaunchTemplate => (is => 'ro', isa => 'Paws::EC2::LaunchTemplate', request_name => 'launchTemplate', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyLaunchTemplateResult

=head1 ATTRIBUTES


=head2 LaunchTemplate => L<Paws::EC2::LaunchTemplate>

Information about the launch template.


=head2 _request_id => Str


=cut

