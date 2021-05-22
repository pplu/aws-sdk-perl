
package Paws::LakeFormation::UpdateLFTag;
  use Moose;
  has CatalogId => (is => 'ro', isa => 'Str');
  has TagKey => (is => 'ro', isa => 'Str', required => 1);
  has TagValuesToAdd => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has TagValuesToDelete => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateLFTag');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LakeFormation::UpdateLFTagResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation::UpdateLFTag - Arguments for method UpdateLFTag on L<Paws::LakeFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateLFTag on the
L<AWS Lake Formation|Paws::LakeFormation> service. Use the attributes of this class
as arguments to method UpdateLFTag.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateLFTag.

=head1 SYNOPSIS

    my $lakeformation = Paws->service('LakeFormation');
    my $UpdateLFTagResponse = $lakeformation->UpdateLFTag(
      TagKey         => 'MyLFTagKey',
      CatalogId      => 'MyCatalogIdString',    # OPTIONAL
      TagValuesToAdd => [
        'MyLFTagValue', ...                     # max: 256
      ],                                        # OPTIONAL
      TagValuesToDelete => [
        'MyLFTagValue', ...                     # max: 256
      ],                                        # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lakeformation/UpdateLFTag>

=head1 ATTRIBUTES


=head2 CatalogId => Str

The identifier for the Data Catalog. By default, the account ID. The
Data Catalog is the persistent metadata store. It contains database
definitions, table definitions, and other control information to manage
your AWS Lake Formation environment.



=head2 B<REQUIRED> TagKey => Str

The key-name for the tag for which to add or delete values.



=head2 TagValuesToAdd => ArrayRef[Str|Undef]

A list of tag values to add from the tag.



=head2 TagValuesToDelete => ArrayRef[Str|Undef]

A list of tag values to delete from the tag.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateLFTag in L<Paws::LakeFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

