package Paws::DynamoDB::ReplicaSettingsUpdate;
  use Moo;
  use Types::Standard qw/Str ArrayRef Int/;
  use Paws::DynamoDB::Types qw/DynamoDB_AutoScalingSettingsUpdate DynamoDB_ReplicaGlobalSecondaryIndexSettingsUpdate/;
  has RegionName => (is => 'ro', isa => Str, required => 1);
  has ReplicaGlobalSecondaryIndexSettingsUpdate => (is => 'ro', isa => ArrayRef[DynamoDB_ReplicaGlobalSecondaryIndexSettingsUpdate]);
  has ReplicaProvisionedReadCapacityAutoScalingSettingsUpdate => (is => 'ro', isa => DynamoDB_AutoScalingSettingsUpdate);
  has ReplicaProvisionedReadCapacityUnits => (is => 'ro', isa => Int);

      sub params_map {
    our $Params_map ||= {
  'types' => {
               'ReplicaGlobalSecondaryIndexSettingsUpdate' => {
                                                                'class' => 'Paws::DynamoDB::ReplicaGlobalSecondaryIndexSettingsUpdate',
                                                                'type' => 'ArrayRef[DynamoDB_ReplicaGlobalSecondaryIndexSettingsUpdate]'
                                                              },
               'ReplicaProvisionedReadCapacityAutoScalingSettingsUpdate' => {
                                                                              'class' => 'Paws::DynamoDB::AutoScalingSettingsUpdate',
                                                                              'type' => 'DynamoDB_AutoScalingSettingsUpdate'
                                                                            },
               'ReplicaProvisionedReadCapacityUnits' => {
                                                          'type' => 'Int'
                                                        },
               'RegionName' => {
                                 'type' => 'Str'
                               }
             }
}
;
      return $Params_map;
    }


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


=head2 ReplicaGlobalSecondaryIndexSettingsUpdate => ArrayRef[DynamoDB_ReplicaGlobalSecondaryIndexSettingsUpdate]

  Represents the settings of a global secondary index for a global table
that will be modified.


=head2 ReplicaProvisionedReadCapacityAutoScalingSettingsUpdate => DynamoDB_AutoScalingSettingsUpdate

  Autoscaling settings for managing a global table replica's read
capacity units.


=head2 ReplicaProvisionedReadCapacityUnits => Int

  The maximum number of strongly consistent reads consumed per second
before DynamoDB returns a C<ThrottlingException>. For more information,
see Specifying Read and Write Requirements
(https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithTables.html#ProvisionedThroughput)
in the I<Amazon DynamoDB Developer Guide>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

