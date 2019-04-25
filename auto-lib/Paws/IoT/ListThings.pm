
package Paws::IoT::ListThings;
  use Moose;
  has AttributeName => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'attributeName');
  has AttributeValue => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'attributeValue');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has ThingTypeName => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'thingTypeName');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListThings');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/things');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::ListThingsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListThings - Arguments for method ListThings on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListThings on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method ListThings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListThings.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $ListThingsResponse = $iot->ListThings(
      AttributeName  => 'MyAttributeName',     # OPTIONAL
      AttributeValue => 'MyAttributeValue',    # OPTIONAL
      MaxResults     => 1,                     # OPTIONAL
      NextToken      => 'MyNextToken',         # OPTIONAL
      ThingTypeName  => 'MyThingTypeName',     # OPTIONAL
    );

    # Results:
    my $NextToken = $ListThingsResponse->NextToken;
    my $Things    = $ListThingsResponse->Things;

    # Returns a L<Paws::IoT::ListThingsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/ListThings>

=head1 ATTRIBUTES


=head2 AttributeName => Str

The attribute name used to search for things.



=head2 AttributeValue => Str

The attribute value used to search for things.



=head2 MaxResults => Int

The maximum number of results to return in this operation.



=head2 NextToken => Str

The token to retrieve the next set of results.



=head2 ThingTypeName => Str

The name of the thing type used to search for things.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListThings in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

