
package Paws::LakeFormation::DeleteLFTag;
  use Moose;
  has CatalogId => (is => 'ro', isa => 'Str');
  has TagKey => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteLFTag');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LakeFormation::DeleteLFTagResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation::DeleteLFTag - Arguments for method DeleteLFTag on L<Paws::LakeFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteLFTag on the
L<AWS Lake Formation|Paws::LakeFormation> service. Use the attributes of this class
as arguments to method DeleteLFTag.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteLFTag.

=head1 SYNOPSIS

    my $lakeformation = Paws->service('LakeFormation');
    my $DeleteLFTagResponse = $lakeformation->DeleteLFTag(
      TagKey    => 'MyLFTagKey',
      CatalogId => 'MyCatalogIdString',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lakeformation/DeleteLFTag>

=head1 ATTRIBUTES


=head2 CatalogId => Str

The identifier for the Data Catalog. By default, the account ID. The
Data Catalog is the persistent metadata store. It contains database
definitions, table definitions, and other control information to manage
your AWS Lake Formation environment.



=head2 B<REQUIRED> TagKey => Str

The key-name for the tag to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteLFTag in L<Paws::LakeFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

