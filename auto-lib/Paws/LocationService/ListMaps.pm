
package Paws::LocationService::ListMaps;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListMaps');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/maps/v0/list-maps');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LocationService::ListMapsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::ListMaps - Arguments for method ListMaps on L<Paws::LocationService>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListMaps on the
L<Amazon Location Service|Paws::LocationService> service. Use the attributes of this class
as arguments to method ListMaps.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListMaps.

=head1 SYNOPSIS

    my $geo = Paws->service('LocationService');
    my $ListMapsResponse = $geo->ListMaps(
      MaxResults => 1,            # OPTIONAL
      NextToken  => 'MyToken',    # OPTIONAL
    );

    # Results:
    my $Entries   = $ListMapsResponse->Entries;
    my $NextToken = $ListMapsResponse->NextToken;

    # Returns a L<Paws::LocationService::ListMapsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/geo/ListMaps>

=head1 ATTRIBUTES


=head2 MaxResults => Int

An optional limit for the number of resources returned in a single
call.

Default value: C<100>



=head2 NextToken => Str

The pagination token specifying which page of results to return in the
response. If no token is provided, the default page is the first page.

Default value: C<null>




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListMaps in L<Paws::LocationService>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

