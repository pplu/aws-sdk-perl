
package Paws::MigrationHub::PutResourceAttributes;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has MigrationTaskName => (is => 'ro', isa => 'Str', required => 1);
  has ProgressUpdateStream => (is => 'ro', isa => 'Str', required => 1);
  has ResourceAttributeList => (is => 'ro', isa => 'ArrayRef[Paws::MigrationHub::ResourceAttribute]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutResourceAttributes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MigrationHub::PutResourceAttributesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHub::PutResourceAttributes - Arguments for method PutResourceAttributes on L<Paws::MigrationHub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutResourceAttributes on the 
L<AWS Migration Hub|Paws::MigrationHub> service. Use the attributes of this class
as arguments to method PutResourceAttributes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutResourceAttributes.

As an example:

  $service_obj->PutResourceAttributes(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/migrationhub/>
=head1 ATTRIBUTES


=head2 DryRun => Bool

Optional boolean flag to indicate whether any effect should take place.
Used to test if the caller has permission to make the call.



=head2 B<REQUIRED> MigrationTaskName => Str

Unique identifier that references the migration task.



=head2 B<REQUIRED> ProgressUpdateStream => Str

The name of the ProgressUpdateStream.



=head2 B<REQUIRED> ResourceAttributeList => ArrayRef[L<Paws::MigrationHub::ResourceAttribute>]

Information about the resource that is being migrated. This data will
be used to map the task to a resource in the Application Discovery
Service (ADS)'s repository.

In the C<ResourceAttribute> object array, the C<Type> field is reserved
for the following values: C<IPV4_ADDRESS | IPV6_ADDRESS | MAC_ADDRESS |
FQDN | VM_MANAGER_ID | VM_MANAGED_OBJECT_REFERENCE | VM_NAME | VM_PATH
| BIOS_ID | MOTHERBOARD_SERIAL_NUMBER>, and the identifying value can
be a string up to 256 characters.

If any "VM" related value is used for a C<ResourceAttribute> object, it
is required that C<VM_MANAGER_ID>, as a minimum, is always used. If it
is not used, the server will not be associated in the Application
Discovery Service (ADS)'s repository using any of the other "VM"
related values, and you will experience data loss. See the Example
section below for a use case of specifying "VM" related values.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutResourceAttributes in L<Paws::MigrationHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

