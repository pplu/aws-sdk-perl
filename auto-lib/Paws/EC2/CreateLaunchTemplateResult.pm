
package Paws::EC2::CreateLaunchTemplateResult;
  use Moose;
  has LaunchTemplate => (is => 'ro', isa => 'Paws::EC2::LaunchTemplate', request_name => 'launchTemplate', traits => ['NameInRequest',]);
  has Warning => (is => 'ro', isa => 'Paws::EC2::ValidationWarning', request_name => 'warning', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateLaunchTemplateResult

=head1 ATTRIBUTES


=head2 LaunchTemplate => L<Paws::EC2::LaunchTemplate>

Information about the launch template.


=head2 Warning => L<Paws::EC2::ValidationWarning>

If the launch template contains parameters or parameter combinations
that are not valid, an error code and an error message are returned for
each issue that's found.


=head2 _request_id => Str


=cut

