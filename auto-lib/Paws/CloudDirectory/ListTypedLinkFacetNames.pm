
package Paws::CloudDirectory::ListTypedLinkFacetNames;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has SchemaArn => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-data-partition', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTypedLinkFacetNames');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/amazonclouddirectory/2017-01-11/typedlink/facet/list');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudDirectory::ListTypedLinkFacetNamesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::ListTypedLinkFacetNames - Arguments for method ListTypedLinkFacetNames on L<Paws::CloudDirectory>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTypedLinkFacetNames on the
L<Amazon CloudDirectory|Paws::CloudDirectory> service. Use the attributes of this class
as arguments to method ListTypedLinkFacetNames.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTypedLinkFacetNames.

=head1 SYNOPSIS

    my $clouddirectory = Paws->service('CloudDirectory');
    my $ListTypedLinkFacetNamesResponse =
      $clouddirectory->ListTypedLinkFacetNames(
      SchemaArn  => 'MyArn',
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
      );

    # Results:
    my $FacetNames = $ListTypedLinkFacetNamesResponse->FacetNames;
    my $NextToken  = $ListTypedLinkFacetNamesResponse->NextToken;

    # Returns a L<Paws::CloudDirectory::ListTypedLinkFacetNamesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/clouddirectory/ListTypedLinkFacetNames>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to retrieve.



=head2 NextToken => Str

The pagination token.



=head2 B<REQUIRED> SchemaArn => Str

The Amazon Resource Name (ARN) that is associated with the schema. For
more information, see arns.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTypedLinkFacetNames in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

