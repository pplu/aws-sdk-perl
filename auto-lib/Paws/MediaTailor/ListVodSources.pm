
package Paws::MediaTailor::ListVodSources;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has SourceLocationName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'sourceLocationName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListVodSources');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/sourceLocation/{sourceLocationName}/vodSources');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaTailor::ListVodSourcesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaTailor::ListVodSources - Arguments for method ListVodSources on L<Paws::MediaTailor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListVodSources on the
L<AWS MediaTailor|Paws::MediaTailor> service. Use the attributes of this class
as arguments to method ListVodSources.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListVodSources.

=head1 SYNOPSIS

    my $api.mediatailor = Paws->service('MediaTailor');
    my $ListVodSourcesResponse = $api . mediatailor->ListVodSources(
      SourceLocationName => 'My__string',
      MaxResults         => 1,               # OPTIONAL
      NextToken          => 'My__string',    # OPTIONAL
    );

    # Results:
    my $Items     = $ListVodSourcesResponse->Items;
    my $NextToken = $ListVodSourcesResponse->NextToken;

    # Returns a L<Paws::MediaTailor::ListVodSourcesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.mediatailor/ListVodSources>

=head1 ATTRIBUTES


=head2 MaxResults => Int

Upper bound on number of records to return. The maximum number of
results is 100.



=head2 NextToken => Str

Pagination token from the GET list request. Use the token to fetch the
next page of results.



=head2 B<REQUIRED> SourceLocationName => Str

The identifier for the source location you are working on.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListVodSources in L<Paws::MediaTailor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

