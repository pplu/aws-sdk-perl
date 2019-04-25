
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

=head1 SYNOPSIS

    my $mgh = Paws->service('MigrationHub');
    my $PutResourceAttributesResult = $mgh->PutResourceAttributes(
      MigrationTaskName     => 'MyMigrationTaskName',
      ProgressUpdateStream  => 'MyProgressUpdateStream',
      ResourceAttributeList => [
        {
          Type => 'IPV4_ADDRESS'
          , # values: IPV4_ADDRESS, IPV6_ADDRESS, MAC_ADDRESS, FQDN, VM_MANAGER_ID, VM_MANAGED_OBJECT_REFERENCE, VM_NAME, VM_PATH, BIOS_ID, MOTHERBOARD_SERIAL_NUMBER
          Value => 'MyResourceAttributeValue',    # min: 1, max: 256

        },
        ...
      ],
      DryRun => 1,                                # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mgh/PutResourceAttributes>

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

Takes the object array of C<ResourceAttribute> where the C<Type> field
is reserved for the following values: C<IPV4_ADDRESS | IPV6_ADDRESS |
MAC_ADDRESS | FQDN | VM_MANAGER_ID | VM_MANAGED_OBJECT_REFERENCE |
VM_NAME | VM_PATH | BIOS_ID | MOTHERBOARD_SERIAL_NUMBER> where the
identifying value can be a string up to 256 characters.

=over

=item *

If any "VM" related value is set for a C<ResourceAttribute> object, it
is required that C<VM_MANAGER_ID>, as a minimum, is always set. If
C<VM_MANAGER_ID> is not set, then all "VM" fields will be discarded and
"VM" fields will not be used for matching the migration task to a
server in Application Discovery Service (ADS)'s repository. See the
Example
(https://docs.aws.amazon.com/migrationhub/latest/ug/API_PutResourceAttributes.html#API_PutResourceAttributes_Examples)
section below for a use case of specifying "VM" related values.

=item *

If a server you are trying to match has multiple IP or MAC addresses,
you should provide as many as you know in separate type/value pairs
passed to the C<ResourceAttributeList> parameter to maximize the
chances of matching.

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutResourceAttributes in L<Paws::MigrationHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

