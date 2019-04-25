package Paws::DynamoDB::SourceTableDetails;
  use Moose;
  has BillingMode => (is => 'ro', isa => 'Str');
  has ItemCount => (is => 'ro', isa => 'Int');
  has KeySchema => (is => 'ro', isa => 'ArrayRef[Paws::DynamoDB::KeySchemaElement]', required => 1);
  has ProvisionedThroughput => (is => 'ro', isa => 'Paws::DynamoDB::ProvisionedThroughput', required => 1);
  has TableArn => (is => 'ro', isa => 'Str');
  has TableCreationDateTime => (is => 'ro', isa => 'Str', required => 1);
  has TableId => (is => 'ro', isa => 'Str', required => 1);
  has TableName => (is => 'ro', isa => 'Str', required => 1);
  has TableSizeBytes => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::SourceTableDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DynamoDB::SourceTableDetails object:

  $service_obj->Method(Att1 => { BillingMode => $value, ..., TableSizeBytes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DynamoDB::SourceTableDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->BillingMode

=head1 DESCRIPTION

Contains the details of the table when the backup was created.

=head1 ATTRIBUTES


=head2 BillingMode => Str

  Controls how you are charged for read and write throughput and how you
manage capacity. This setting can be changed later.

=over

=item *

C<PROVISIONED> - Sets the read/write capacity mode to C<PROVISIONED>.
We recommend using C<PROVISIONED> for predictable workloads.

=item *

C<PAY_PER_REQUEST> - Sets the read/write capacity mode to
C<PAY_PER_REQUEST>. We recommend using C<PAY_PER_REQUEST> for
unpredictable workloads.

=back



=head2 ItemCount => Int

  Number of items in the table. Please note this is an approximate value.


=head2 B<REQUIRED> KeySchema => ArrayRef[L<Paws::DynamoDB::KeySchemaElement>]

  Schema of the table.


=head2 B<REQUIRED> ProvisionedThroughput => L<Paws::DynamoDB::ProvisionedThroughput>

  Read IOPs and Write IOPS on the table when the backup was created.


=head2 TableArn => Str

  ARN of the table for which backup was created.


=head2 B<REQUIRED> TableCreationDateTime => Str

  Time when the source table was created.


=head2 B<REQUIRED> TableId => Str

  Unique identifier for the table for which the backup was created.


=head2 B<REQUIRED> TableName => Str

  The name of the table for which the backup was created.


=head2 TableSizeBytes => Int

  Size of the table in bytes. Please note this is an approximate value.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

