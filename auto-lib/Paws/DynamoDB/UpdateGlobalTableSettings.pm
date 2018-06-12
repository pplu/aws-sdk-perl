
package Paws::DynamoDB::UpdateGlobalTableSettings;
  use Moose;
  has GlobalTableGlobalSecondaryIndexSettingsUpdate => (is => 'ro', isa => 'ArrayRef[Paws::DynamoDB::GlobalTableGlobalSecondaryIndexSettingsUpdate]');
  has GlobalTableName => (is => 'ro', isa => 'Str', required => 1);
  has GlobalTableProvisionedWriteCapacityUnits => (is => 'ro', isa => 'Int');
  has ReplicaSettingsUpdate => (is => 'ro', isa => 'ArrayRef[Paws::DynamoDB::ReplicaSettingsUpdate]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateGlobalTableSettings');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DynamoDB::UpdateGlobalTableSettingsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::UpdateGlobalTableSettings - Arguments for method UpdateGlobalTableSettings on L<Paws::DynamoDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateGlobalTableSettings on the 
L<Amazon DynamoDB|Paws::DynamoDB> service. Use the attributes of this class
as arguments to method UpdateGlobalTableSettings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateGlobalTableSettings.

As an example:

  $service_obj->UpdateGlobalTableSettings(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dynamodb/UpdateGlobalTableSettings>
=head1 ATTRIBUTES


=head2 GlobalTableGlobalSecondaryIndexSettingsUpdate => ArrayRef[L<Paws::DynamoDB::GlobalTableGlobalSecondaryIndexSettingsUpdate>]

Represents the settings of a global secondary index for a global table
that will be modified.



=head2 B<REQUIRED> GlobalTableName => Str

The name of the global table



=head2 GlobalTableProvisionedWriteCapacityUnits => Int

The maximum number of writes consumed per second before DynamoDB
returns a C<ThrottlingException.>



=head2 ReplicaSettingsUpdate => ArrayRef[L<Paws::DynamoDB::ReplicaSettingsUpdate>]

Represents the settings for a global table in a region that will be
modified.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateGlobalTableSettings in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

