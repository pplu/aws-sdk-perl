
package Paws::IoT::ListThingGroupsForThing;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has ThingName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'thingName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListThingGroupsForThing');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/things/{thingName}/thing-groups');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::ListThingGroupsForThingResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListThingGroupsForThing - Arguments for method ListThingGroupsForThing on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListThingGroupsForThing on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method ListThingGroupsForThing.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListThingGroupsForThing.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $ListThingGroupsForThingResponse = $iot->ListThingGroupsForThing(
      ThingName  => 'MyThingName',
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $NextToken   = $ListThingGroupsForThingResponse->NextToken;
    my $ThingGroups = $ListThingGroupsForThingResponse->ThingGroups;

    # Returns a L<Paws::IoT::ListThingGroupsForThingResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/ListThingGroupsForThing>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return at one time.



=head2 NextToken => Str

The token to retrieve the next set of results.



=head2 B<REQUIRED> ThingName => Str

The thing name.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListThingGroupsForThing in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

