
package Paws::Route53Resolver::ListTagsForResource;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ResourceArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTagsForResource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53Resolver::ListTagsForResourceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::ListTagsForResource - Arguments for method ListTagsForResource on L<Paws::Route53Resolver>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTagsForResource on the
L<Amazon Route 53 Resolver|Paws::Route53Resolver> service. Use the attributes of this class
as arguments to method ListTagsForResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTagsForResource.

=head1 SYNOPSIS

    my $route53resolver = Paws->service('Route53Resolver');
    my $ListTagsForResourceResponse = $route53resolver->ListTagsForResource(
      ResourceArn => 'MyArn',
      MaxResults  => 1,                # OPTIONAL
      NextToken   => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListTagsForResourceResponse->NextToken;
    my $Tags      = $ListTagsForResourceResponse->Tags;

    # Returns a L<Paws::Route53Resolver::ListTagsForResourceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53resolver/ListTagsForResource>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of tags that you want to return in the response to a
C<ListTagsForResource> request. If you don't specify a value for
C<MaxResults>, Resolver returns up to 100 tags.



=head2 NextToken => Str

For the first C<ListTagsForResource> request, omit this value.

If you have more than C<MaxResults> tags, you can submit another
C<ListTagsForResource> request to get the next group of tags for the
resource. In the next request, specify the value of C<NextToken> from
the previous response.



=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) for the resource that you want to list
tags for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTagsForResource in L<Paws::Route53Resolver>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

