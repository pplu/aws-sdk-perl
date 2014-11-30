
package Paws::DynamoDB::UpdateTable {
  use Moose;
  has GlobalSecondaryIndexUpdates => (is => 'ro', isa => 'ArrayRef[Paws::DynamoDB::GlobalSecondaryIndexUpdate]');
  has ProvisionedThroughput => (is => 'ro', isa => 'Paws::DynamoDB::ProvisionedThroughput');
  has TableName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateTable');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DynamoDB::UpdateTableOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::UpdateTable - Arguments for method UpdateTable on Paws::DynamoDB

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateTable on the 
Amazon DynamoDB service. Use the attributes of this class
as arguments to method UpdateTable.

You shouln't make instances of this class. Each attribute should be used as a named argument in the call to UpdateTable.

As an example:

  $service_obj->UpdateTable(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 GlobalSecondaryIndexUpdates => ArrayRef[Paws::DynamoDB::GlobalSecondaryIndexUpdate]

  

An array of one or more global secondary indexes on the table, together
with provisioned throughput settings for each index.










=head2 ProvisionedThroughput => Paws::DynamoDB::ProvisionedThroughput

  

=head2 B<REQUIRED> TableName => Str

  

The name of the table to be updated.












=head1 SEE ALSO

This class forms part of L<Paws>, and documents parameters for UpdateTable in Paws::DynamoDB

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

