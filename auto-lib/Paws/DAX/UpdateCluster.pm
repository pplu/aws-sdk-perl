
package Paws::DAX::UpdateCluster;
  use Moose;
  has ClusterName => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has NotificationTopicArn => (is => 'ro', isa => 'Str');
  has NotificationTopicStatus => (is => 'ro', isa => 'Str');
  has ParameterGroupName => (is => 'ro', isa => 'Str');
  has PreferredMaintenanceWindow => (is => 'ro', isa => 'Str');
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateCluster');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DAX::UpdateClusterResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DAX::UpdateCluster - Arguments for method UpdateCluster on L<Paws::DAX>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateCluster on the
L<Amazon DynamoDB Accelerator (DAX)|Paws::DAX> service. Use the attributes of this class
as arguments to method UpdateCluster.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateCluster.

=head1 SYNOPSIS

    my $dax = Paws->service('DAX');
    my $UpdateClusterResponse = $dax->UpdateCluster(
      ClusterName                => 'MyString',
      Description                => 'MyString',             # OPTIONAL
      NotificationTopicArn       => 'MyString',             # OPTIONAL
      NotificationTopicStatus    => 'MyString',             # OPTIONAL
      ParameterGroupName         => 'MyString',             # OPTIONAL
      PreferredMaintenanceWindow => 'MyString',             # OPTIONAL
      SecurityGroupIds           => [ 'MyString', ... ],    # OPTIONAL
    );

    # Results:
    my $Cluster = $UpdateClusterResponse->Cluster;

    # Returns a L<Paws::DAX::UpdateClusterResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dax/UpdateCluster>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClusterName => Str

The name of the DAX cluster to be modified.



=head2 Description => Str

A description of the changes being made to the cluster.



=head2 NotificationTopicArn => Str

The Amazon Resource Name (ARN) that identifies the topic.



=head2 NotificationTopicStatus => Str

The current state of the topic.



=head2 ParameterGroupName => Str

The name of a parameter group for this cluster.



=head2 PreferredMaintenanceWindow => Str

A range of time when maintenance of DAX cluster software will be
performed. For example: C<sun:01:00-sun:09:00>. Cluster maintenance
normally takes less than 30 minutes, and is performed automatically
within the maintenance window.



=head2 SecurityGroupIds => ArrayRef[Str|Undef]

A list of user-specified security group IDs to be assigned to each node
in the DAX cluster. If this parameter is not specified, DAX assigns the
default VPC security group to each node.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateCluster in L<Paws::DAX>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

