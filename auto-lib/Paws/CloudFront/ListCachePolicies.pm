
package Paws::CloudFront::ListCachePolicies;
  use Moose;
  has Marker => (is => 'ro', isa => 'Str', query_name => 'Marker', traits => ['ParamInQuery']);
  has MaxItems => (is => 'ro', isa => 'Str', query_name => 'MaxItems', traits => ['ParamInQuery']);
  has Type => (is => 'ro', isa => 'Str', query_name => 'Type', traits => ['ParamInQuery']);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListCachePolicies');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2020-05-31/cache-policy');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFront::ListCachePoliciesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::ListCachePolicies - Arguments for method ListCachePolicies on L<Paws::CloudFront>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListCachePolicies2020_05_31 on the
L<Amazon CloudFront|Paws::CloudFront> service. Use the attributes of this class
as arguments to method ListCachePolicies2020_05_31.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListCachePolicies2020_05_31.

=head1 SYNOPSIS

    my $cloudfront = Paws->service('CloudFront');
    my $ListCachePoliciesResult = $cloudfront->ListCachePolicies(
      Marker   => 'Mystring',    # OPTIONAL
      MaxItems => 'Mystring',    # OPTIONAL
      Type     => 'managed',     # OPTIONAL
    );

    # Results:
    my $CachePolicyList = $ListCachePoliciesResult->CachePolicyList;

    # Returns a L<Paws::CloudFront::ListCachePoliciesResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudfront/ListCachePolicies>

=head1 ATTRIBUTES


=head2 Marker => Str

Use this field when paginating results to indicate where to begin in
your list of cache policies. The response includes cache policies in
the list that occur after the marker. To get the next page of the list,
set this fieldE<rsquo>s value to the value of C<NextMarker> from the
current pageE<rsquo>s response.



=head2 MaxItems => Str

The maximum number of cache policies that you want in the response.



=head2 Type => Str

A filter to return only the specified kinds of cache policies. Valid
values are:

=over

=item *

C<managed> E<ndash> Returns only the managed policies created by AWS.

=item *

C<custom> E<ndash> Returns only the custom policies created in your AWS
account.

=back


Valid values are: C<"managed">, C<"custom">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListCachePolicies2020_05_31 in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

