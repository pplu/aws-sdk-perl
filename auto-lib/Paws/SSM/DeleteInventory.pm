
package Paws::SSM::DeleteInventory;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool');
  has SchemaDeleteOption => (is => 'ro', isa => 'Str');
  has TypeName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteInventory');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::DeleteInventoryResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::DeleteInventory - Arguments for method DeleteInventory on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteInventory on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method DeleteInventory.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteInventory.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $DeleteInventoryResult = $ssm->DeleteInventory(
      TypeName           => 'MyInventoryItemTypeName',
      ClientToken        => 'MyClientToken',             # OPTIONAL
      DryRun             => 1,                           # OPTIONAL
      SchemaDeleteOption => 'DisableSchema',             # OPTIONAL
    );

    # Results:
    my $DeletionId      = $DeleteInventoryResult->DeletionId;
    my $DeletionSummary = $DeleteInventoryResult->DeletionSummary;
    my $TypeName        = $DeleteInventoryResult->TypeName;

    # Returns a L<Paws::SSM::DeleteInventoryResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/DeleteInventory>

=head1 ATTRIBUTES


=head2 ClientToken => Str

User-provided idempotency token.



=head2 DryRun => Bool

Use this option to view a summary of the deletion request without
deleting any data or the data type. This option is useful when you only
want to understand what will be deleted. Once you validate that the
data to be deleted is what you intend to delete, you can run the same
command without specifying the C<DryRun> option.



=head2 SchemaDeleteOption => Str

Use the C<SchemaDeleteOption> to delete a custom inventory type
(schema). If you don't choose this option, the system only deletes
existing inventory data associated with the custom inventory type.
Choose one of the following options:

DisableSchema: If you choose this option, the system ignores all
inventory data for the specified version, and any earlier versions. To
enable this schema again, you must call the C<PutInventory> action for
a version greater than the disbled version.

DeleteSchema: This option deletes the specified custom type from the
Inventory service. You can recreate the schema later, if you want.

Valid values are: C<"DisableSchema">, C<"DeleteSchema">

=head2 B<REQUIRED> TypeName => Str

The name of the custom inventory type for which you want to delete
either all previously collected data, or the inventory type itself.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteInventory in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

