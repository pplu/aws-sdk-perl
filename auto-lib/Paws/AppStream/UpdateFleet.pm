
package Paws::AppStream::UpdateFleet;
  use Moose;
  has AttributesToDelete => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ComputeCapacity => (is => 'ro', isa => 'Paws::AppStream::ComputeCapacity');
  has DeleteVpcConfig => (is => 'ro', isa => 'Bool');
  has Description => (is => 'ro', isa => 'Str');
  has DisconnectTimeoutInSeconds => (is => 'ro', isa => 'Int');
  has DisplayName => (is => 'ro', isa => 'Str');
  has DomainJoinInfo => (is => 'ro', isa => 'Paws::AppStream::DomainJoinInfo');
  has EnableDefaultInternetAccess => (is => 'ro', isa => 'Bool');
  has ImageArn => (is => 'ro', isa => 'Str');
  has ImageName => (is => 'ro', isa => 'Str');
  has InstanceType => (is => 'ro', isa => 'Str');
  has MaxUserDurationInSeconds => (is => 'ro', isa => 'Int');
  has Name => (is => 'ro', isa => 'Str');
  has VpcConfig => (is => 'ro', isa => 'Paws::AppStream::VpcConfig');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateFleet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppStream::UpdateFleetResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::UpdateFleet - Arguments for method UpdateFleet on L<Paws::AppStream>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateFleet on the
L<Amazon AppStream|Paws::AppStream> service. Use the attributes of this class
as arguments to method UpdateFleet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateFleet.

=head1 SYNOPSIS

    my $appstream2 = Paws->service('AppStream');
    my $UpdateFleetResult = $appstream2->UpdateFleet(
      AttributesToDelete => [
        'VPC_CONFIGURATION',
        ... # values: VPC_CONFIGURATION, VPC_CONFIGURATION_SECURITY_GROUP_IDS, DOMAIN_JOIN_INFO
      ],    # OPTIONAL
      ComputeCapacity => {
        DesiredInstances => 1,

      },    # OPTIONAL
      DeleteVpcConfig            => 1,                  # OPTIONAL
      Description                => 'MyDescription',    # OPTIONAL
      DisconnectTimeoutInSeconds => 1,                  # OPTIONAL
      DisplayName                => 'MyDisplayName',    # OPTIONAL
      DomainJoinInfo             => {
        DirectoryName => 'MyDirectoryName',             # OPTIONAL
        OrganizationalUnitDistinguishedName =>
          'MyOrganizationalUnitDistinguishedName',      # max: 2000; OPTIONAL
      },    # OPTIONAL
      EnableDefaultInternetAccess => 1,             # OPTIONAL
      ImageArn                    => 'MyArn',       # OPTIONAL
      ImageName                   => 'MyString',    # OPTIONAL
      InstanceType                => 'MyString',    # OPTIONAL
      MaxUserDurationInSeconds    => 1,             # OPTIONAL
      Name                        => 'MyString',    # OPTIONAL
      VpcConfig                   => {
        SecurityGroupIds => [
          'MyString', ...                           # min: 1
        ],                                          # max: 5; OPTIONAL
        SubnetIds => [
          'MyString', ...                           # min: 1
        ],                                          # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $Fleet = $UpdateFleetResult->Fleet;

    # Returns a L<Paws::AppStream::UpdateFleetResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appstream2/UpdateFleet>

=head1 ATTRIBUTES


=head2 AttributesToDelete => ArrayRef[Str|Undef]

The fleet attributes to delete.



=head2 ComputeCapacity => L<Paws::AppStream::ComputeCapacity>

The desired capacity for the fleet.



=head2 DeleteVpcConfig => Bool

Deletes the VPC association for the specified fleet.



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



=head2 ImageArn => Str

The ARN of the public, private, or shared image to use.



=head2 ImageName => Str

The name of the image used to create the fleet.



=head2 InstanceType => Str

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



=head2 Name => Str

A unique name for the fleet.



=head2 VpcConfig => L<Paws::AppStream::VpcConfig>

The VPC configuration for the fleet.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateFleet in L<Paws::AppStream>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

