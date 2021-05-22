
package Paws::LakeFormation::SearchTablesByLFTags;
  use Moose;
  has CatalogId => (is => 'ro', isa => 'Str');
  has Expression => (is => 'ro', isa => 'ArrayRef[Paws::LakeFormation::LFTag]', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SearchTablesByLFTags');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LakeFormation::SearchTablesByLFTagsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation::SearchTablesByLFTags - Arguments for method SearchTablesByLFTags on L<Paws::LakeFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SearchTablesByLFTags on the
L<AWS Lake Formation|Paws::LakeFormation> service. Use the attributes of this class
as arguments to method SearchTablesByLFTags.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SearchTablesByLFTags.

=head1 SYNOPSIS

    my $lakeformation = Paws->service('LakeFormation');
    my $SearchTablesByLFTagsResponse = $lakeformation->SearchTablesByLFTags(
      Expression => [
        {
          TagKey    => 'MyLFTagKey',    # min: 1, max: 128
          TagValues => [
            'MyLFTagValue', ...         # max: 256
          ],                            # min: 1, max: 50

        },
        ...
      ],
      CatalogId  => 'MyCatalogIdString',    # OPTIONAL
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyToken',              # OPTIONAL
    );

    # Results:
    my $NextToken = $SearchTablesByLFTagsResponse->NextToken;
    my $TableList = $SearchTablesByLFTagsResponse->TableList;

    # Returns a L<Paws::LakeFormation::SearchTablesByLFTagsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lakeformation/SearchTablesByLFTags>

=head1 ATTRIBUTES


=head2 CatalogId => Str

The identifier for the Data Catalog. By default, the account ID. The
Data Catalog is the persistent metadata store. It contains database
definitions, table definitions, and other control information to manage
your AWS Lake Formation environment.



=head2 B<REQUIRED> Expression => ArrayRef[L<Paws::LakeFormation::LFTag>]

A list of conditions (C<LFTag> structures) to search for in table
resources.



=head2 MaxResults => Int

The maximum number of results to return.



=head2 NextToken => Str

A continuation token, if this is not the first call to retrieve this
list.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SearchTablesByLFTags in L<Paws::LakeFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

