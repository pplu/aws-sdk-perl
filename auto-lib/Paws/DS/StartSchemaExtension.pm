
package Paws::DS::StartSchemaExtension;
  use Moose;
  has CreateSnapshotBeforeSchemaExtension => (is => 'ro', isa => 'Bool', required => 1);
  has Description => (is => 'ro', isa => 'Str', required => 1);
  has DirectoryId => (is => 'ro', isa => 'Str', required => 1);
  has LdifContent => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartSchemaExtension');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DS::StartSchemaExtensionResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DS::StartSchemaExtension - Arguments for method StartSchemaExtension on L<Paws::DS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartSchemaExtension on the
L<AWS Directory Service|Paws::DS> service. Use the attributes of this class
as arguments to method StartSchemaExtension.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartSchemaExtension.

=head1 SYNOPSIS

    my $ds = Paws->service('DS');
    my $StartSchemaExtensionResult = $ds->StartSchemaExtension(
      CreateSnapshotBeforeSchemaExtension => 1,
      Description                         => 'MyDescription',
      DirectoryId                         => 'MyDirectoryId',
      LdifContent                         => 'MyLdifContent',

    );

    # Results:
    my $SchemaExtensionId = $StartSchemaExtensionResult->SchemaExtensionId;

    # Returns a L<Paws::DS::StartSchemaExtensionResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ds/StartSchemaExtension>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreateSnapshotBeforeSchemaExtension => Bool

If true, creates a snapshot of the directory before applying the schema
extension.



=head2 B<REQUIRED> Description => Str

A description of the schema extension.



=head2 B<REQUIRED> DirectoryId => Str

The identifier of the directory for which the schema extension will be
applied to.



=head2 B<REQUIRED> LdifContent => Str

The LDIF file represented as a string. To construct the LdifContent
string, precede each line as it would be formatted in an ldif file with
\n. See the example request below for more details. The file size can
be no larger than 1MB.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartSchemaExtension in L<Paws::DS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

