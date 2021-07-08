
package Paws::SMS::GetAppLaunchConfigurationResponse;
  use Moose;
  has AppId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'appId' );
  has AutoLaunch => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'autoLaunch' );
  has RoleName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleName' );
  has ServerGroupLaunchConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::SMS::ServerGroupLaunchConfiguration]', traits => ['NameInRequest'], request_name => 'serverGroupLaunchConfigurations' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SMS::GetAppLaunchConfigurationResponse

=head1 ATTRIBUTES


=head2 AppId => Str

The ID of the application.


=head2 AutoLaunch => Bool

Indicates whether the application is configured to launch automatically
after replication is complete.


=head2 RoleName => Str

The name of the service role in the customer's account that AWS
CloudFormation uses to launch the application.


=head2 ServerGroupLaunchConfigurations => ArrayRef[L<Paws::SMS::ServerGroupLaunchConfiguration>]

The launch configurations for server groups in this application.


=head2 _request_id => Str


=cut

1;