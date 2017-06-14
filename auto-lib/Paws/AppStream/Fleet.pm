package Paws::AppStream::Fleet;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has ComputeCapacityStatus => (is => 'ro', isa => 'Paws::AppStream::ComputeCapacityStatus', required => 1);
  has CreatedTime => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has DisconnectTimeoutInSeconds => (is => 'ro', isa => 'Int');
  has DisplayName => (is => 'ro', isa => 'Str');
  has EnableDefaultInternetAccess => (is => 'ro', isa => 'Bool');
  has FleetErrors => (is => 'ro', isa => 'ArrayRef[Paws::AppStream::FleetError]');
  has ImageName => (is => 'ro', isa => 'Str', required => 1);
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

Contains the parameters for a fleet.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

  The ARN for the fleet.


=head2 B<REQUIRED> ComputeCapacityStatus => L<Paws::AppStream::ComputeCapacityStatus>

  The capacity information for the fleet.


=head2 CreatedTime => Str

  The time at which the fleet was created.


=head2 Description => Str

  The description displayed to end users on the AppStream 2.0 portal.


=head2 DisconnectTimeoutInSeconds => Int

  The time after disconnection when a session is considered to have
ended. If a user who got disconnected reconnects within this timeout
interval, the user is connected back to their previous session. The
input can be any numeric value in seconds between 60 and 57600.


=head2 DisplayName => Str

  The name displayed to end users on the AppStream 2.0 portal.


=head2 EnableDefaultInternetAccess => Bool

  Whether default Internet access is enabled for the fleet.


=head2 FleetErrors => ArrayRef[L<Paws::AppStream::FleetError>]

  The list of fleet errors is appended to this list.


=head2 B<REQUIRED> ImageName => Str

  The image used by the fleet.


=head2 B<REQUIRED> InstanceType => Str

  The instance type of compute resources for the fleet. The fleet
instances are launched from this instance type.


=head2 MaxUserDurationInSeconds => Int

  The maximum time for which a streaming session can run. The value can
be any numeric value in seconds between 600 and 57600.


=head2 B<REQUIRED> Name => Str

  The name of the fleet.


=head2 B<REQUIRED> State => Str

  The current state for the fleet.


=head2 VpcConfig => L<Paws::AppStream::VpcConfig>

  The VPC configuration for the fleet.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppStream>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

