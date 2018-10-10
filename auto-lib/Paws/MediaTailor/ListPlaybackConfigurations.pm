
package Paws::MediaTailor::ListPlaybackConfigurations;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'MaxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'NextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListPlaybackConfigurations');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/playbackConfigurations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaTailor::ListPlaybackConfigurationsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaTailor::ListPlaybackConfigurations - Arguments for method ListPlaybackConfigurations on L<Paws::MediaTailor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListPlaybackConfigurations on the
L<AWS MediaTailor|Paws::MediaTailor> service. Use the attributes of this class
as arguments to method ListPlaybackConfigurations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListPlaybackConfigurations.

=head1 SYNOPSIS

    my $api.mediatailor = Paws->service('MediaTailor');
    my $ListPlaybackConfigurationsResponse =
      $api . mediatailor->ListPlaybackConfigurations(
      MaxResults => 1,               # OPTIONAL
      NextToken  => 'My__string',    # OPTIONAL
      );

    # Results:
    my $Items     = $ListPlaybackConfigurationsResponse->Items;
    my $NextToken = $ListPlaybackConfigurationsResponse->NextToken;

    # Returns a L<Paws::MediaTailor::ListPlaybackConfigurationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.mediatailor/ListPlaybackConfigurations>

=head1 ATTRIBUTES


=head2 MaxResults => Int

Maximum number of records to return.



=head2 NextToken => Str

Pagination token returned by the GET list request when results overrun
the meximum allowed. Use the token to fetch the next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListPlaybackConfigurations in L<Paws::MediaTailor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

