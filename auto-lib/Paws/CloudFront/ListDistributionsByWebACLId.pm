
package Paws::CloudFront::ListDistributionsByWebACLId;
  use Moose;
  has Marker => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'Marker' );
  has MaxItems => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'MaxItems' );
  has WebACLId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'WebACLId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDistributionsByWebACLId');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2015-07-27/distributionsByWebACLId/{WebACLId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFront::ListDistributionsByWebACLIdResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::ListDistributionsByWebACLIdResult

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











=cut

