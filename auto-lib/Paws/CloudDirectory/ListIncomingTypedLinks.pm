
package Paws::CloudDirectory::ListIncomingTypedLinks;
  use Moose;
  has ConsistencyLevel => (is => 'ro', isa => 'Str');
  has DirectoryArn => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-data-partition', required => 1);
  has FilterAttributeRanges => (is => 'ro', isa => 'ArrayRef[Paws::CloudDirectory::TypedLinkAttributeRange]');
  has FilterTypedLink => (is => 'ro', isa => 'Paws::CloudDirectory::TypedLinkSchemaAndFacetName');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ObjectReference => (is => 'ro', isa => 'Paws::CloudDirectory::ObjectReference', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListIncomingTypedLinks');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/amazonclouddirectory/2017-01-11/typedlink/incoming');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudDirectory::ListIncomingTypedLinksResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::ListIncomingTypedLinks - Arguments for method ListIncomingTypedLinks on L<Paws::CloudDirectory>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListIncomingTypedLinks on the
L<Amazon CloudDirectory|Paws::CloudDirectory> service. Use the attributes of this class
as arguments to method ListIncomingTypedLinks.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListIncomingTypedLinks.

=head1 SYNOPSIS

    my $clouddirectory = Paws->service('CloudDirectory');
    my $ListIncomingTypedLinksResponse =
      $clouddirectory->ListIncomingTypedLinks(
      DirectoryArn    => 'MyArn',
      ObjectReference => {
        Selector => 'MySelectorObjectReference',    # OPTIONAL
      },
      ConsistencyLevel      => 'SERIALIZABLE',      # OPTIONAL
      FilterAttributeRanges => [
        {
          Range => {
            EndMode => 'FIRST'
            , # values: FIRST, LAST, LAST_BEFORE_MISSING_VALUES, INCLUSIVE, EXCLUSIVE
            StartMode => 'FIRST'
            , # values: FIRST, LAST, LAST_BEFORE_MISSING_VALUES, INCLUSIVE, EXCLUSIVE
            EndValue => {
              BinaryValue   => 'BlobBinaryAttributeValue',    # OPTIONAL
              BooleanValue  => 1,                             # OPTIONAL
              DatetimeValue => '1970-01-01T01:00:00',         # OPTIONAL
              NumberValue   => 'MyNumberAttributeValue',      # OPTIONAL
              StringValue   => 'MyStringAttributeValue',      # OPTIONAL
            },    # OPTIONAL
            StartValue => {
              BinaryValue   => 'BlobBinaryAttributeValue',    # OPTIONAL
              BooleanValue  => 1,                             # OPTIONAL
              DatetimeValue => '1970-01-01T01:00:00',         # OPTIONAL
              NumberValue   => 'MyNumberAttributeValue',      # OPTIONAL
              StringValue   => 'MyStringAttributeValue',      # OPTIONAL
            },    # OPTIONAL
          },
          AttributeName => 'MyAttributeName',    # min: 1, max: 230; OPTIONAL
        },
        ...
      ],                                         # OPTIONAL
      FilterTypedLink => {
        SchemaArn     => 'MyArn',
        TypedLinkName => 'MyTypedLinkName',

      },                                         # OPTIONAL
      MaxResults => 1,                           # OPTIONAL
      NextToken  => 'MyNextToken',               # OPTIONAL
      );

    # Results:
    my $LinkSpecifiers = $ListIncomingTypedLinksResponse->LinkSpecifiers;
    my $NextToken      = $ListIncomingTypedLinksResponse->NextToken;

    # Returns a L<Paws::CloudDirectory::ListIncomingTypedLinksResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/clouddirectory/ListIncomingTypedLinks>

=head1 ATTRIBUTES


=head2 ConsistencyLevel => Str

The consistency level to execute the request at.

Valid values are: C<"SERIALIZABLE">, C<"EVENTUAL">

=head2 B<REQUIRED> DirectoryArn => Str

The Amazon Resource Name (ARN) of the directory where you want to list
the typed links.



=head2 FilterAttributeRanges => ArrayRef[L<Paws::CloudDirectory::TypedLinkAttributeRange>]

Provides range filters for multiple attributes. When providing ranges
to typed link selection, any inexact ranges must be specified at the
end. Any attributes that do not have a range specified are presumed to
match the entire range.



=head2 FilterTypedLink => L<Paws::CloudDirectory::TypedLinkSchemaAndFacetName>

Filters are interpreted in the order of the attributes on the typed
link facet, not the order in which they are supplied to any API calls.



=head2 MaxResults => Int

The maximum number of results to retrieve.



=head2 NextToken => Str

The pagination token.



=head2 B<REQUIRED> ObjectReference => L<Paws::CloudDirectory::ObjectReference>

Reference that identifies the object whose attributes will be listed.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListIncomingTypedLinks in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

