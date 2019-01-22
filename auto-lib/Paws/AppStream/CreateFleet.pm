
package Paws::AppStream::CreateFleet;
  use Moose;
  has ComputeCapacity => (is => 'ro', isa => 'Paws::AppStream::ComputeCapacity', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has DisconnectTimeoutInSeconds => (is => 'ro', isa => 'Int');
  has DisplayName => (is => 'ro', isa => 'Str');
  has DomainJoinInfo => (is => 'ro', isa => 'Paws::AppStream::DomainJoinInfo');
  has EnableDefaultInternetAccess => (is => 'ro', isa => 'Bool');
  has FleetType => (is => 'ro', isa => 'Str');
  has ImageArn => (is => 'ro', isa => 'Str');
  has ImageName => (is => 'ro', isa => 'Str');
  has InstanceType => (is => 'ro', isa => 'Str', required => 1);
  has MaxUserDurationInSeconds => (is => 'ro', isa => 'Int');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::AppStream::Tags');
  has VpcConfig => (is => 'ro', isa => 'Paws::AppStream::VpcConfig');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateFleet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppStream::CreateFleetResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::CreateFleet - Arguments for method CreateFleet on L<Paws::AppStream>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateFleet on the
L<Amazon AppStream|Paws::AppStream> service. Use the attributes of this class
as arguments to method CreateFleet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateFleet.

=head1 SYNOPSIS

    my $appstream2 = Paws->service('AppStream');
    my $CreateFleetResult = $appstream2->CreateFleet(
      ComputeCapacity => {
        DesiredInstances => 1,

      },
      InstanceType               => 'MyString',
      Name                       => 'MyName',
      Description                => 'MyDescription',    # OPTIONAL
      DisconnectTimeoutInSeconds => 1,                  # OPTIONAL
      DisplayName                => 'MyDisplayName',    # OPTIONAL
      DomainJoinInfo             => {
        DirectoryName => 'MyDirectoryName',             # OPTIONAL
        OrganizationalUnitDistinguishedName =>
          'MyOrganizationalUnitDistinguishedName',      # max: 2000; OPTIONAL
      },    # OPTIONAL
      EnableDefaultInternetAccess => 1,              # OPTIONAL
      FleetType                   => 'ALWAYS_ON',    # OPTIONAL
      ImageArn                    => 'MyArn',        # OPTIONAL
      ImageName                   => 'MyString',     # OPTIONAL
      MaxUserDurationInSeconds    => 1,              # OPTIONAL
      Tags                        => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      VpcConfig => {
        SecurityGroupIds => [
          'MyString', ...    # min: 1
        ],                   # max: 5; OPTIONAL
        SubnetIds => [
          'MyString', ...    # min: 1
        ],                   # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $Fleet = $CreateFleetResult->Fleet;

    # Returns a L<Paws::AppStream::CreateFleetResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appstream2/CreateFleet>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ComputeCapacity => L<Paws::AppStream::ComputeCapacity>

The desired capacity for the fleet.



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

Enables or disables default internet access for the fleet.



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


Valid values are: C<"ALWAYS_ON">, C<"ON_DEMAND">

=head2 ImageArn => Str

The ARN of the public, private, or shared image to use.



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

The maximum time that a streaming session can run, in seconds. Specify
a value between 600 and 57600.



=head2 B<REQUIRED> Name => Str

A unique name for the fleet.



=head2 Tags => L<Paws::AppStream::Tags>

The tags to associate with the fleet. A tag is a key-value pair (the
value is optional). For example, Environment=Test, or, if you do not
specify a value, Environment=.

If you do not specify a value, we set the value to an empty string.

For more information, see Tagging Your Resources
(http://docs.aws.amazon.com/appstream2/latest/developerguide/tagging-basic.html)
in the I<Amazon AppStream 2.0 Developer Guide>.



=head2 VpcConfig => L<Paws::AppStream::VpcConfig>

The VPC configuration for the fleet.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateFleet in L<Paws::AppStream>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

