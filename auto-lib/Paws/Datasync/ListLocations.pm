
package Paws::Datasync::ListLocations;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::Datasync::LocationFilter]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListLocations');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Datasync::ListLocationsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::ListLocations - Arguments for method ListLocations on L<Paws::Datasync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListLocations on the
L<AWS DataSync|Paws::Datasync> service. Use the attributes of this class
as arguments to method ListLocations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListLocations.

=head1 SYNOPSIS

    my $datasync = Paws->service('Datasync');
    my $ListLocationsResponse = $datasync->ListLocations(
      Filters => [
        {
          Name =>
            'LocationUri',    # values: LocationUri, LocationType, CreationTime
          Operator => 'Equals'
          , # values: Equals, NotEquals, In, LessThanOrEqual, LessThan, GreaterThanOrEqual, GreaterThan, Contains, NotContains, BeginsWith
          Values => [
            'MyFilterAttributeValue', ...    # min: 1, max: 255
          ],

        },
        ...
      ],    # OPTIONAL
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $Locations = $ListLocationsResponse->Locations;
    my $NextToken = $ListLocationsResponse->NextToken;

    # Returns a L<Paws::Datasync::ListLocationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datasync/ListLocations>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::Datasync::LocationFilter>]

You can use API filters to narrow down the list of resources returned
by C<ListLocations>. For example, to retrieve all tasks on a specific
source location, you can use C<ListLocations> with filter name
C<LocationType S3> and C<Operator Equals>.



=head2 MaxResults => Int

The maximum number of locations to return.



=head2 NextToken => Str

An opaque string that indicates the position at which to begin the next
list of locations.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListLocations in L<Paws::Datasync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

