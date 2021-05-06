
package Paws::CloudDirectory::UpgradeAppliedSchema;
  use Moose;
  has DirectoryArn => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Bool');
  has PublishedSchemaArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpgradeAppliedSchema');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/amazonclouddirectory/2017-01-11/schema/upgradeapplied');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudDirectory::UpgradeAppliedSchemaResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::UpgradeAppliedSchema - Arguments for method UpgradeAppliedSchema on L<Paws::CloudDirectory>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpgradeAppliedSchema on the
L<Amazon CloudDirectory|Paws::CloudDirectory> service. Use the attributes of this class
as arguments to method UpgradeAppliedSchema.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpgradeAppliedSchema.

=head1 SYNOPSIS

    my $clouddirectory = Paws->service('CloudDirectory');
    my $UpgradeAppliedSchemaResponse = $clouddirectory->UpgradeAppliedSchema(
      DirectoryArn       => 'MyArn',
      PublishedSchemaArn => 'MyArn',
      DryRun             => 1,         # OPTIONAL
    );

    # Results:
    my $DirectoryArn      = $UpgradeAppliedSchemaResponse->DirectoryArn;
    my $UpgradedSchemaArn = $UpgradeAppliedSchemaResponse->UpgradedSchemaArn;

    # Returns a L<Paws::CloudDirectory::UpgradeAppliedSchemaResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/clouddirectory/UpgradeAppliedSchema>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DirectoryArn => Str

The ARN for the directory to which the upgraded schema will be applied.



=head2 DryRun => Bool

Used for testing whether the major version schemas are backward
compatible or not. If schema compatibility fails, an exception would be
thrown else the call would succeed but no changes will be saved. This
parameter is optional.



=head2 B<REQUIRED> PublishedSchemaArn => Str

The revision of the published schema to upgrade the directory to.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpgradeAppliedSchema in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

