
package Paws::IoT::ListThingPrincipals;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has ThingName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'thingName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListThingPrincipals');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/things/{thingName}/principals');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::ListThingPrincipalsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListThingPrincipals - Arguments for method ListThingPrincipals on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListThingPrincipals on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method ListThingPrincipals.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListThingPrincipals.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $ListThingPrincipalsResponse = $iot->ListThingPrincipals(
      ThingName  => 'MyThingName',
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $NextToken  = $ListThingPrincipalsResponse->NextToken;
    my $Principals = $ListThingPrincipalsResponse->Principals;

    # Returns a L<Paws::IoT::ListThingPrincipalsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/ListThingPrincipals>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return in this operation.



=head2 NextToken => Str

To retrieve the next set of results, the C<nextToken> value from a
previous response; otherwise B<null> to receive the first set of
results.



=head2 B<REQUIRED> ThingName => Str

The name of the thing.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListThingPrincipals in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

