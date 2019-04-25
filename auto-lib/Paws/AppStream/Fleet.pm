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

Describes the parameters for a fleet.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

  The ARN for the fleet.


=head2 B<REQUIRED> ComputeCapacityStatus => L<Paws::AppStream::ComputeCapacityStatus>

  The capacity status for the fleet.


=head2 CreatedTime => Str

  The time the fleet was created.


=head2 Description => Str

  The description to display.


=head2 DisconnectTimeoutInSeconds => Int

  The time after disconnection when a session is considered to have
ended, in seconds. If a user who was disconnected reconnects within
this time interval, the user is connected to their previous session.
Specify a value between 60 and 57600.


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



=head2 ImageArn => Str

  The ARN for the public, private, or shared image.


=head2 ImageName => Str

  The name of the image used to create the fleet.


=head2 B<REQUIRED> InstanceType => Str

  The instance type to use when launching fleet instances.


=head2 MaxUserDurationInSeconds => Int

  The maximum time that a streaming session can run, in seconds. Specify
a value between 600 and 57600.


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

