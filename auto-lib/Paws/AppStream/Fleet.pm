package Paws::AppStream::Fleet;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has ComputeCapacityStatus => (is => 'ro', isa => 'Paws::AppStream::ComputeCapacityStatus', required => 1);
  has CreatedTime => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has DisconnectTimeoutInSeconds => (is => 'ro', isa => 'Int');
  has DisplayName => (is => 'ro', isa => 'Str');
  has DomainJoinInfo => (is => 'ro', isa => 'Paws::AppStream::DomainJoinInfo');
  has EnableDefaultInternetAccess => (is => 'ro', isa => 'Bool');
  has FleetErrors => (is => 'ro', isa => 'ArrayRef[Paws::AppStream::FleetError]');
  has FleetType => (is => 'ro', isa => 'Str');
  has IamRoleArn => (is => 'ro', isa => 'Str');
  has IdleDisconnectTimeoutInSeconds => (is => 'ro', isa => 'Int');
  has ImageArn => (is => 'ro', isa => 'Str');
  has ImageName => (is => 'ro', isa => 'Str');
  has InstanceType => (is => 'ro', isa => 'Str', required => 1);
  has MaxUserDurationInSeconds => (is => 'ro', isa => 'Int');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has State => (is => 'ro', isa => 'Str', required => 1);
  has VpcConfig => (is => 'ro', isa => 'Paws::AppStream::VpcConfig');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::Fleet

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppStream::Fleet object:

  $service_obj->Method(Att1 => { Arn => $value, ..., VpcConfig => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppStream::Fleet object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Describes a fleet.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

  The Amazon Resource Name (ARN) for the fleet.


=head2 B<REQUIRED> ComputeCapacityStatus => L<Paws::AppStream::ComputeCapacityStatus>

  The capacity status for the fleet.


=head2 CreatedTime => Str

  The time the fleet was created.


=head2 Description => Str

  The description to display.


=head2 DisconnectTimeoutInSeconds => Int

  The amount of time that a streaming session remains active after users
disconnect. If they try to reconnect to the streaming session after a
disconnection or network interruption within this time interval, they
are connected to their previous session. Otherwise, they are connected
to a new session with a new streaming instance.

Specify a value between 60 and 360000.


=head2 DisplayName => Str

  The fleet name to display.


=head2 DomainJoinInfo => L<Paws::AppStream::DomainJoinInfo>

  The name of the directory and organizational unit (OU) to use to join
the fleet to a Microsoft Active Directory domain.


=head2 EnableDefaultInternetAccess => Bool

  Indicates whether default internet access is enabled for the fleet.


=head2 FleetErrors => ArrayRef[L<Paws::AppStream::FleetError>]

  The fleet errors.


=head2 FleetType => Str

  The fleet type.

=over

=item ALWAYS_ON

Provides users with instant-on access to their apps. You are charged
for all running instances in your fleet, even if no users are streaming
apps.

=item ON_DEMAND

Provide users with access to applications after they connect, which
takes one to two minutes. You are charged for instance streaming when
users are connected and a small hourly fee for instances that are not
streaming apps.

=back



=head2 IamRoleArn => Str

  The ARN of the IAM role that is applied to the fleet. To assume a role,
the fleet instance calls the AWS Security Token Service (STS)
C<AssumeRole> API operation and passes the ARN of the role to use. The
operation creates a new session with temporary credentials. AppStream
2.0 retrieves the temporary credentials and creates the
B<AppStream_Machine_Role> credential profile on the instance.

For more information, see Using an IAM Role to Grant Permissions to
Applications and Scripts Running on AppStream 2.0 Streaming Instances
(https://docs.aws.amazon.com/appstream2/latest/developerguide/using-iam-roles-to-grant-permissions-to-applications-scripts-streaming-instances.html)
in the I<Amazon AppStream 2.0 Administration Guide>.


=head2 IdleDisconnectTimeoutInSeconds => Int

  The amount of time that users can be idle (inactive) before they are
disconnected from their streaming session and the
C<DisconnectTimeoutInSeconds> time interval begins. Users are notified
before they are disconnected due to inactivity. If users try to
reconnect to the streaming session before the time interval specified
in C<DisconnectTimeoutInSeconds> elapses, they are connected to their
previous session. Users are considered idle when they stop providing
keyboard or mouse input during their streaming session. File uploads
and downloads, audio in, audio out, and pixels changing do not qualify
as user activity. If users continue to be idle after the time interval
in C<IdleDisconnectTimeoutInSeconds> elapses, they are disconnected.

To prevent users from being disconnected due to inactivity, specify a
value of 0. Otherwise, specify a value between 60 and 3600. The default
value is 0.

If you enable this feature, we recommend that you specify a value that
corresponds exactly to a whole number of minutes (for example, 60, 120,
and 180). If you don't do this, the value is rounded to the nearest
minute. For example, if you specify a value of 70, users are
disconnected after 1 minute of inactivity. If you specify a value that
is at the midpoint between two different minutes, the value is rounded
up. For example, if you specify a value of 90, users are disconnected
after 2 minutes of inactivity.


=head2 ImageArn => Str

  The ARN for the public, private, or shared image.


=head2 ImageName => Str

  The name of the image used to create the fleet.


=head2 B<REQUIRED> InstanceType => Str

  The instance type to use when launching fleet instances. The following
instance types are available:

=over

=item *

stream.standard.medium

=item *

stream.standard.large

=item *

stream.compute.large

=item *

stream.compute.xlarge

=item *

stream.compute.2xlarge

=item *

stream.compute.4xlarge

=item *

stream.compute.8xlarge

=item *

stream.memory.large

=item *

stream.memory.xlarge

=item *

stream.memory.2xlarge

=item *

stream.memory.4xlarge

=item *

stream.memory.8xlarge

=item *

stream.graphics-design.large

=item *

stream.graphics-design.xlarge

=item *

stream.graphics-design.2xlarge

=item *

stream.graphics-design.4xlarge

=item *

stream.graphics-desktop.2xlarge

=item *

stream.graphics-pro.4xlarge

=item *

stream.graphics-pro.8xlarge

=item *

stream.graphics-pro.16xlarge

=back



=head2 MaxUserDurationInSeconds => Int

  The maximum amount of time that a streaming session can remain active,
in seconds. If users are still connected to a streaming instance five
minutes before this limit is reached, they are prompted to save any
open documents before being disconnected. After this time elapses, the
instance is terminated and replaced by a new instance.

Specify a value between 600 and 360000.


=head2 B<REQUIRED> Name => Str

  The name of the fleet.


=head2 B<REQUIRED> State => Str

  The current state for the fleet.


=head2 VpcConfig => L<Paws::AppStream::VpcConfig>

  The VPC configuration for the fleet.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppStream>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

