
package Paws::CloudFront::ListDistributionsByWebACLId;
  use Moose;
  has Marker => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'Marker' );
  has MaxItems => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'MaxItems' );
  has WebACLId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'WebACLId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDistributionsByWebACLId');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2016-09-07/distributionsByWebACLId/{WebACLId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFront::ListDistributionsByWebACLIdResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::ListDistributionsByWebACLId - Arguments for method ListDistributionsByWebACLId on Paws::CloudFront

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDistributionsByWebACLId2016_09_07 on the 
Amazon CloudFront service. Use the attributes of this class
as arguments to method ListDistributionsByWebACLId2016_09_07.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDistributionsByWebACLId2016_09_07.

As an example:

  $service_obj->ListDistributionsByWebACLId2016_09_07(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 Marker => Str

Use Marker and MaxItems to control pagination of results. If you have
more than MaxItems distributions that satisfy the request, the response
includes a NextMarker element. To get the next page of results, submit
another request. For the value of Marker, specify the value of
NextMarker from the last response. (For the first request, omit
Marker.)



=head2 MaxItems => Str

The maximum number of distributions that you want CloudFront to return
in the response body. The maximum and default values are both 100.



=head2 B<REQUIRED> WebACLId => Str

The Id of the AWS WAF web ACL for which you want to list the associated
distributions. If you specify "null" for the Id, the request returns a
list of the distributions that aren't associated with a web ACL.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDistributionsByWebACLId2016_09_07 in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

