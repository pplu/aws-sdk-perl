
package Paws::CloudFront::ListDistributions;
  use Moose;
  has Marker => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'Marker' );
  has MaxItems => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'MaxItems' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDistributions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2016-09-07/distribution');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFront::ListDistributionsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::ListDistributionsResult

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




=cut

