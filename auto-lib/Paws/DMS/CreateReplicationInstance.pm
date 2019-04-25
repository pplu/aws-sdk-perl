
package Paws::DMS::CreateReplicationInstance;
  use Moose;
  has AllocatedStorage => (is => 'ro', isa => 'Int');
  has AutoMinorVersionUpgrade => (is => 'ro', isa => 'Bool');
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has DnsNameServers => (is => 'ro', isa => 'Str');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has MultiAZ => (is => 'ro', isa => 'Bool');
  has PreferredMaintenanceWindow => (is => 'ro', isa => 'Str');
  has PubliclyAccessible => (is => 'ro', isa => 'Bool');
  has ReplicationInstanceClass => (is => 'ro', isa => 'Str', required => 1);
  has ReplicationInstanceIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has ReplicationSubnetGroupIdentifier => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::DMS::Tag]');
  has VpcSecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateReplicationInstance');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DMS::CreateReplicationInstanceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::CreateReplicationInstance - Arguments for method CreateReplicationInstance on L<Paws::DMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateReplicationInstance on the
L<AWS Database Migration Service|Paws::DMS> service. Use the attributes of this class
as arguments to method CreateReplicationInstance.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateReplicationInstance.

=head1 SYNOPSIS

    my $dms = Paws->service('DMS');
    my $CreateReplicationInstanceResponse = $dms->CreateReplicationInstance(
      ReplicationInstanceClass         => 'MyString',
      ReplicationInstanceIdentifier    => 'MyString',
      AllocatedStorage                 => 1,             # OPTIONAL
      AutoMinorVersionUpgrade          => 1,             # OPTIONAL
      AvailabilityZone                 => 'MyString',    # OPTIONAL
      DnsNameServers                   => 'MyString',    # OPTIONAL
      EngineVersion                    => 'MyString',    # OPTIONAL
      KmsKeyId                         => 'MyString',    # OPTIONAL
      MultiAZ                          => 1,             # OPTIONAL
      PreferredMaintenanceWindow       => 'MyString',    # OPTIONAL
      PubliclyAccessible               => 1,             # OPTIONAL
      ReplicationSubnetGroupIdentifier => 'MyString',    # OPTIONAL
      Tags                             => [
        {
          Key   => 'MyString',
          Value => 'MyString',
        },
        ...
      ],                                                 # OPTIONAL
      VpcSecurityGroupIds => [ 'MyString', ... ],        # OPTIONAL
    );

    # Results:
    my $ReplicationInstance =
      $CreateReplicationInstanceResponse->ReplicationInstance;

    # Returns a L<Paws::DMS::CreateReplicationInstanceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dms/CreateReplicationInstance>

=head1 ATTRIBUTES


=head2 AllocatedStorage => Int

The amount of storage (in gigabytes) to be initially allocated for the
replication instance.



=head2 AutoMinorVersionUpgrade => Bool

Indicates that minor engine upgrades will be applied automatically to
the replication instance during the maintenance window.

Default: C<true>



=head2 AvailabilityZone => Str

The EC2 Availability Zone that the replication instance will be created
in.

Default: A random, system-chosen Availability Zone in the endpoint's
region.

Example: C<us-east-1d>



=head2 DnsNameServers => Str

A list of DNS name servers supported for the replication instance.



=head2 EngineVersion => Str

The engine version number of the replication instance.



=head2 KmsKeyId => Str

The AWS KMS key identifier that is used to encrypt the content on the
replication instance. If you don't specify a value for the C<KmsKeyId>
parameter, then AWS DMS uses your default encryption key. AWS KMS
creates the default encryption key for your AWS account. Your AWS
account has a different default encryption key for each AWS Region.



=head2 MultiAZ => Bool

Specifies if the replication instance is a Multi-AZ deployment. You
cannot set the C<AvailabilityZone> parameter if the Multi-AZ parameter
is set to C<true>.



=head2 PreferredMaintenanceWindow => Str

The weekly time range during which system maintenance can occur, in
Universal Coordinated Time (UTC).

Format: C<ddd:hh24:mi-ddd:hh24:mi>

Default: A 30-minute window selected at random from an 8-hour block of
time per region, occurring on a random day of the week.

Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun

Constraints: Minimum 30-minute window.



=head2 PubliclyAccessible => Bool

Specifies the accessibility options for the replication instance. A
value of C<true> represents an instance with a public IP address. A
value of C<false> represents an instance with a private IP address. The
default value is C<true>.



=head2 B<REQUIRED> ReplicationInstanceClass => Str

The compute and memory capacity of the replication instance as
specified by the replication instance class.

Valid Values: C<dms.t2.micro | dms.t2.small | dms.t2.medium |
dms.t2.large | dms.c4.large | dms.c4.xlarge | dms.c4.2xlarge |
dms.c4.4xlarge>



=head2 B<REQUIRED> ReplicationInstanceIdentifier => Str

The replication instance identifier. This parameter is stored as a
lowercase string.

Constraints:

=over

=item *

Must contain from 1 to 63 alphanumeric characters or hyphens.

=item *

First character must be a letter.

=item *

Cannot end with a hyphen or contain two consecutive hyphens.

=back

Example: C<myrepinstance>



=head2 ReplicationSubnetGroupIdentifier => Str

A subnet group to associate with the replication instance.



=head2 Tags => ArrayRef[L<Paws::DMS::Tag>]

Tags to be associated with the replication instance.



=head2 VpcSecurityGroupIds => ArrayRef[Str|Undef]

Specifies the VPC security group to be used with the replication
instance. The VPC security group must work with the VPC containing the
replication instance.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateReplicationInstance in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

