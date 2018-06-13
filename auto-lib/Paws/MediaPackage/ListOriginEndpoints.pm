
package Paws::MediaPackage::ListOriginEndpoints;
  use Moose;
  has ChannelId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'channelId');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListOriginEndpoints');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/origin_endpoints');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaPackage::ListOriginEndpointsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackage::ListOriginEndpoints - Arguments for method ListOriginEndpoints on L<Paws::MediaPackage>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListOriginEndpoints on the
L<AWS Elemental MediaPackage|Paws::MediaPackage> service. Use the attributes of this class
as arguments to method ListOriginEndpoints.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListOriginEndpoints.

=head1 SYNOPSIS

    my $mediapackage = Paws->service('MediaPackage');
    my $ListOriginEndpointsResponse = $mediapackage->ListOriginEndpoints(
      ChannelId  => 'My__string',    # OPTIONAL
      MaxResults => 1,               # OPTIONAL
      NextToken  => 'My__string',    # OPTIONAL
    );

    # Results:
    my $NextToken       = $ListOriginEndpointsResponse->NextToken;
    my $OriginEndpoints = $ListOriginEndpointsResponse->OriginEndpoints;

    # Returns a L<Paws::MediaPackage::ListOriginEndpointsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediapackage/ListOriginEndpoints>

=head1 ATTRIBUTES


=head2 ChannelId => Str

When specified, the request will return only OriginEndpoints associated
with the given Channel ID.



=head2 MaxResults => Int

The upper bound on the number of records to return.



=head2 NextToken => Str

A token used to resume pagination from the end of a previous request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListOriginEndpoints in L<Paws::MediaPackage>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

