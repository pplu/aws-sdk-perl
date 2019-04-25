package Paws::DynamoDB::ReplicaSettingsUpdate;
  use Moose;
  has RegionName => (is => 'ro', isa => 'Str', required => 1);
  has ReplicaGlobalSecondaryIndexSettingsUpdate => (is => 'ro', isa => 'ArrayRef[Paws::DynamoDB::ReplicaGlobalSecondaryIndexSettingsUpdate]');
  has ReplicaProvisionedReadCapacityAutoScalingSettingsUpdate => (is => 'ro', isa => 'Paws::DynamoDB::AutoScalingSettingsUpdate');
  has ReplicaProvisionedReadCapacityUnits => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::ReplicaSettingsUpdate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DynamoDB::ReplicaSettingsUpdate object:

  $service_obj->Method(Att1 => { RegionName => $value, ..., ReplicaProvisionedReadCapacityUnits => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DynamoDB::ReplicaSettingsUpdate object:

  $result = $service_obj->Method(...);
  $result->Att1->RegionName

=head1 DESCRIPTION

Represents the settings for a global table in a region that will be
modified.

=head1 ATTRIBUTES


=head2 B<REQUIRED> RegionName => Str

  The region of the replica to be added.


=head2 ReplicaGlobalSecondaryIndexSettingsUpdate => ArrayRef[L<Paws::DynamoDB::ReplicaGlobalSecondaryIndexSettingsUpdate>]

  Represents the settings of a global secondary index for a global table
that will be modified.


=head2 ReplicaProvisionedReadCapacityAutoScalingSettingsUpdate => L<Paws::DynamoDB::AutoScalingSettingsUpdate>

  Autoscaling settings for managing a global table replica's read
capacity units.


=head2 ReplicaProvisionedReadCapacityUnits => Int

  The maximum number of strongly consistent reads consumed per second
before DynamoDB returns a C<ThrottlingException>. For more information,
see Specifying Read and Write Requirements
(http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithTables.html#ProvisionedThroughput)
in the I<Amazon DynamoDB Developer Guide>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

