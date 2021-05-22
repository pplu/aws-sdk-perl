
package Paws::GreengrassV2::ListComponentVersions;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'arn', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListComponentVersions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/greengrass/v2/components/{arn}/versions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GreengrassV2::ListComponentVersionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GreengrassV2::ListComponentVersions - Arguments for method ListComponentVersions on L<Paws::GreengrassV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListComponentVersions on the
L<AWS IoT Greengrass V2|Paws::GreengrassV2> service. Use the attributes of this class
as arguments to method ListComponentVersions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListComponentVersions.

=head1 SYNOPSIS

    my $greengrass = Paws->service('GreengrassV2');
    my $ListComponentVersionsResponse = $greengrass->ListComponentVersions(
      Arn        => 'MyComponentARN',
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyNextTokenString',    # OPTIONAL
    );

    # Results:
    my $ComponentVersions = $ListComponentVersionsResponse->ComponentVersions;
    my $NextToken         = $ListComponentVersionsResponse->NextToken;

    # Returns a L<Paws::GreengrassV2::ListComponentVersionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/greengrass/ListComponentVersions>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The ARN
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
of the component version.



=head2 MaxResults => Int

The maximum number of results to be returned per paginated request.



=head2 NextToken => Str

The token to be used for the next set of paginated results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListComponentVersions in L<Paws::GreengrassV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

