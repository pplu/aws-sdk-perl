
package Paws::XRay::ListTagsForResource;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ResourceARN => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTagsForResource');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/ListTagsForResource');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::XRay::ListTagsForResourceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::XRay::ListTagsForResource - Arguments for method ListTagsForResource on L<Paws::XRay>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTagsForResource on the
L<AWS X-Ray|Paws::XRay> service. Use the attributes of this class
as arguments to method ListTagsForResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTagsForResource.

=head1 SYNOPSIS

    my $xray = Paws->service('XRay');
    my $ListTagsForResourceResponse = $xray->ListTagsForResource(
      ResourceARN => 'MyAmazonResourceName',
      NextToken   => 'MyString',               # OPTIONAL
    );

    # Results:
    my $NextToken = $ListTagsForResourceResponse->NextToken;
    my $Tags      = $ListTagsForResourceResponse->Tags;

    # Returns a L<Paws::XRay::ListTagsForResourceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/xray/ListTagsForResource>

=head1 ATTRIBUTES


=head2 NextToken => Str

A pagination token. If multiple pages of results are returned, use the
C<NextToken> value returned with the current page of results as the
value of this parameter to get the next page of results.



=head2 B<REQUIRED> ResourceARN => Str

The Amazon Resource Number (ARN) of an X-Ray group or sampling rule.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTagsForResource in L<Paws::XRay>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

