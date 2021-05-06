
package Paws::MediaLive::ListMultiplexes;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListMultiplexes');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/prod/multiplexes');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaLive::ListMultiplexesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::ListMultiplexes - Arguments for method ListMultiplexes on L<Paws::MediaLive>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListMultiplexes on the
L<AWS Elemental MediaLive|Paws::MediaLive> service. Use the attributes of this class
as arguments to method ListMultiplexes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListMultiplexes.

=head1 SYNOPSIS

    my $medialive = Paws->service('MediaLive');
    my $ListMultiplexesResponse = $medialive->ListMultiplexes(
      MaxResults => 1,               # OPTIONAL
      NextToken  => 'My__string',    # OPTIONAL
    );

    # Results:
    my $Multiplexes = $ListMultiplexesResponse->Multiplexes;
    my $NextToken   = $ListMultiplexesResponse->NextToken;

    # Returns a L<Paws::MediaLive::ListMultiplexesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/medialive/ListMultiplexes>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of items to return.



=head2 NextToken => Str

The token to retrieve the next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListMultiplexes in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

