
package Paws::LakeFormation::ListLFTags;
  use Moose;
  has CatalogId => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ResourceShareType => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListLFTags');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LakeFormation::ListLFTagsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation::ListLFTags - Arguments for method ListLFTags on L<Paws::LakeFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListLFTags on the
L<AWS Lake Formation|Paws::LakeFormation> service. Use the attributes of this class
as arguments to method ListLFTags.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListLFTags.

=head1 SYNOPSIS

    my $lakeformation = Paws->service('LakeFormation');
    my $ListLFTagsResponse = $lakeformation->ListLFTags(
      CatalogId         => 'MyCatalogIdString',    # OPTIONAL
      MaxResults        => 1,                      # OPTIONAL
      NextToken         => 'MyToken',              # OPTIONAL
      ResourceShareType => 'FOREIGN',              # OPTIONAL
    );

    # Results:
    my $LFTags    = $ListLFTagsResponse->LFTags;
    my $NextToken = $ListLFTagsResponse->NextToken;

    # Returns a L<Paws::LakeFormation::ListLFTagsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lakeformation/ListLFTags>

=head1 ATTRIBUTES


=head2 CatalogId => Str

The identifier for the Data Catalog. By default, the account ID. The
Data Catalog is the persistent metadata store. It contains database
definitions, table definitions, and other control information to manage
your AWS Lake Formation environment.



=head2 MaxResults => Int

The maximum number of results to return.



=head2 NextToken => Str

A continuation token, if this is not the first call to retrieve this
list.



=head2 ResourceShareType => Str

If resource share type is C<ALL>, returns both in-account tags and
shared tags that the requester has permission to view. If resource
share type is C<FOREIGN>, returns all share tags that the requester can
view. If no resource share type is passed, lists tags in the given
catalog ID that the requester has permission to view.

Valid values are: C<"FOREIGN">, C<"ALL">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListLFTags in L<Paws::LakeFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

