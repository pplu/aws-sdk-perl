
package Paws::SSM::PutInventory;
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::SSM::InventoryItem]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutInventory');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::PutInventoryResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::PutInventory - Arguments for method PutInventory on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutInventory on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method PutInventory.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutInventory.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $PutInventoryResult = $ssm->PutInventory(
      InstanceId => 'MyInstanceId',
      Items      => [
        {
          CaptureTime   => 'MyInventoryItemCaptureTime',
          SchemaVersion => 'MyInventoryItemSchemaVersion',
          TypeName      => 'MyInventoryItemTypeName',        # min: 1, max: 100
          Content       => [
            {
              'MyAttributeName' =>
                'MyAttributeValue',    # key: min: 1, max: 64, value: max: 4096
            },
            ...                        # max: 50
          ],                           # max: 10000; OPTIONAL
          ContentHash => 'MyInventoryItemContentHash',    # max: 256; OPTIONAL
          Context     => {
            'MyAttributeName' =>
              'MyAttributeValue',    # key: min: 1, max: 64, value: max: 4096
          },    # max: 50; OPTIONAL
        },
        ...
      ],

    );

    # Results:
    my $Message = $PutInventoryResult->Message;

    # Returns a L<Paws::SSM::PutInventoryResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/PutInventory>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceId => Str

One or more instance IDs where you want to add or update inventory
items.



=head2 B<REQUIRED> Items => ArrayRef[L<Paws::SSM::InventoryItem>]

The inventory items that you want to add or update on instances.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutInventory in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

