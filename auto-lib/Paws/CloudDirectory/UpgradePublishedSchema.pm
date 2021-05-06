
package Paws::CloudDirectory::UpgradePublishedSchema;
  use Moose;
  has DevelopmentSchemaArn => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Bool');
  has MinorVersion => (is => 'ro', isa => 'Str', required => 1);
  has PublishedSchemaArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpgradePublishedSchema');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/amazonclouddirectory/2017-01-11/schema/upgradepublished');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudDirectory::UpgradePublishedSchemaResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::UpgradePublishedSchema - Arguments for method UpgradePublishedSchema on L<Paws::CloudDirectory>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpgradePublishedSchema on the
L<Amazon CloudDirectory|Paws::CloudDirectory> service. Use the attributes of this class
as arguments to method UpgradePublishedSchema.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpgradePublishedSchema.

=head1 SYNOPSIS

    my $clouddirectory = Paws->service('CloudDirectory');
    my $UpgradePublishedSchemaResponse =
      $clouddirectory->UpgradePublishedSchema(
      DevelopmentSchemaArn => 'MyArn',
      MinorVersion         => 'MyVersion',
      PublishedSchemaArn   => 'MyArn',
      DryRun               => 1,             # OPTIONAL
      );

    # Results:
    my $UpgradedSchemaArn = $UpgradePublishedSchemaResponse->UpgradedSchemaArn;

    # Returns a L<Paws::CloudDirectory::UpgradePublishedSchemaResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/clouddirectory/UpgradePublishedSchema>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DevelopmentSchemaArn => Str

The ARN of the development schema with the changes used for the
upgrade.



=head2 DryRun => Bool

Used for testing whether the Development schema provided is backwards
compatible, or not, with the publish schema provided by the user to be
upgraded. If schema compatibility fails, an exception would be thrown
else the call would succeed. This parameter is optional and defaults to
false.



=head2 B<REQUIRED> MinorVersion => Str

Identifies the minor version of the published schema that will be
created. This parameter is NOT optional.



=head2 B<REQUIRED> PublishedSchemaArn => Str

The ARN of the published schema to be upgraded.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpgradePublishedSchema in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

