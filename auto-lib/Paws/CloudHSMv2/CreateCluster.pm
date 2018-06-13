
package Paws::CloudHSMv2::CreateCluster;
  use Moose;
  has HsmType => (is => 'ro', isa => 'Str', required => 1);
  has SourceBackupId => (is => 'ro', isa => 'Str');
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCluster');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudHSMv2::CreateClusterResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudHSMv2::CreateCluster - Arguments for method CreateCluster on L<Paws::CloudHSMv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateCluster on the
L<AWS CloudHSM V2|Paws::CloudHSMv2> service. Use the attributes of this class
as arguments to method CreateCluster.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateCluster.

=head1 SYNOPSIS

    my $cloudhsmv2 = Paws->service('CloudHSMv2');
    my $CreateClusterResponse = $cloudhsmv2->CreateCluster(
      HsmType        => 'MyHsmType',
      SubnetIds      => [ 'MySubnetId', ... ],
      SourceBackupId => 'MyBackupId',            # OPTIONAL
    );

    # Results:
    my $Cluster = $CreateClusterResponse->Cluster;

    # Returns a L<Paws::CloudHSMv2::CreateClusterResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudhsmv2/CreateCluster>

=head1 ATTRIBUTES


=head2 B<REQUIRED> HsmType => Str

The type of HSM to use in the cluster. Currently the only allowed value
is C<hsm1.medium>.



=head2 SourceBackupId => Str

The identifier (ID) of the cluster backup to restore. Use this value to
restore the cluster from a backup instead of creating a new cluster. To
find the backup ID, use DescribeBackups.



=head2 B<REQUIRED> SubnetIds => ArrayRef[Str|Undef]

The identifiers (IDs) of the subnets where you are creating the
cluster. You must specify at least one subnet. If you specify multiple
subnets, they must meet the following criteria:

=over

=item *

All subnets must be in the same virtual private cloud (VPC).

=item *

You can specify only one subnet per Availability Zone.

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateCluster in L<Paws::CloudHSMv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

