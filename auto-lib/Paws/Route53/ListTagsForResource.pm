
package Paws::Route53::ListTagsForResource;
  use Moose;
  has ResourceId => (is => 'ro', isa => 'Str', uri_name => 'ResourceId', traits => ['ParamInURI'], required => 1);
  has ResourceType => (is => 'ro', isa => 'Str', uri_name => 'ResourceType', traits => ['ParamInURI'], required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTagsForResource');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2013-04-01/tags/{ResourceType}/{ResourceId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53::ListTagsForResourceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::ListTagsForResource - Arguments for method ListTagsForResource on L<Paws::Route53>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTagsForResource on the
L<Amazon Route 53|Paws::Route53> service. Use the attributes of this class
as arguments to method ListTagsForResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTagsForResource.

=head1 SYNOPSIS

    my $route53 = Paws->service('Route53');
    my $ListTagsForResourceResponse = $route53->ListTagsForResource(
      ResourceId   => 'MyTagResourceId',
      ResourceType => 'healthcheck',

    );

    # Results:
    my $ResourceTagSet = $ListTagsForResourceResponse->ResourceTagSet;

    # Returns a L<Paws::Route53::ListTagsForResourceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53/ListTagsForResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceId => Str

The ID of the resource for which you want to retrieve tags.



=head2 B<REQUIRED> ResourceType => Str

The type of the resource.

=over

=item *

The resource type for health checks is C<healthcheck>.

=item *

The resource type for hosted zones is C<hostedzone>.

=back


Valid values are: C<"healthcheck">, C<"hostedzone">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTagsForResource in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

