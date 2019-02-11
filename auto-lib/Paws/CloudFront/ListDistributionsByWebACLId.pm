
package Paws::CloudFront::ListDistributionsByWebACLId;
  use Moose;
  has Marker => (is => 'ro', isa => 'Str', query_name => 'Marker', traits => ['ParamInQuery']);
  has MaxItems => (is => 'ro', isa => 'Str', query_name => 'MaxItems', traits => ['ParamInQuery']);
  has WebACLId => (is => 'ro', isa => 'Str', uri_name => 'WebACLId', traits => ['ParamInURI'], required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDistributionsByWebACLId');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2018-11-05/distributionsByWebACLId/{WebACLId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFront::ListDistributionsByWebACLIdResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::ListDistributionsByWebACLId - Arguments for method ListDistributionsByWebACLId on L<Paws::CloudFront>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDistributionsByWebACLId2018_11_05 on the
L<Amazon CloudFront|Paws::CloudFront> service. Use the attributes of this class
as arguments to method ListDistributionsByWebACLId2018_11_05.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDistributionsByWebACLId2018_11_05.

=head1 SYNOPSIS

    my $cloudfront = Paws->service('CloudFront');
    my $ListDistributionsByWebACLIdResult =
      $cloudfront->ListDistributionsByWebACLId(
      WebACLId => 'Mystring',
      Marker   => 'Mystring',    # OPTIONAL
      MaxItems => 'Mystring',    # OPTIONAL
      );

    # Results:
    my $DistributionList = $ListDistributionsByWebACLIdResult->DistributionList;

    # Returns a L<Paws::CloudFront::ListDistributionsByWebACLIdResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudfront/ListDistributionsByWebACLId>

=head1 ATTRIBUTES


=head2 Marker => Str

Use C<Marker> and C<MaxItems> to control pagination of results. If you
have more than C<MaxItems> distributions that satisfy the request, the
response includes a C<NextMarker> element. To get the next page of
results, submit another request. For the value of C<Marker>, specify
the value of C<NextMarker> from the last response. (For the first
request, omit C<Marker>.)



=head2 MaxItems => Str

The maximum number of distributions that you want CloudFront to return
in the response body. The maximum and default values are both 100.



=head2 B<REQUIRED> WebACLId => Str

The ID of the AWS WAF web ACL that you want to list the associated
distributions. If you specify "null" for the ID, the request returns a
list of the distributions that aren't associated with a web ACL.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDistributionsByWebACLId2018_11_05 in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

