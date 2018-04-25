
package Paws::CloudFront::ListDistributions;
  use Moose;
  has Marker => (is => 'ro', isa => 'Str', query_name => 'Marker', traits => ['ParamInQuery']);
  has MaxItems => (is => 'ro', isa => 'Str', query_name => 'MaxItems', traits => ['ParamInQuery']);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDistributions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2017-10-30/distribution');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFront::ListDistributionsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::ListDistributions - Arguments for method ListDistributions on L<Paws::CloudFront>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDistributions2017_10_30 on the 
L<Amazon CloudFront|Paws::CloudFront> service. Use the attributes of this class
as arguments to method ListDistributions2017_10_30.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDistributions2017_10_30.

As an example:

  $service_obj->ListDistributions2017_10_30(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 Marker => Str

Use this when paginating results to indicate where to begin in your
list of distributions. The results include distributions in the list
that occur after the marker. To get the next page of results, set the
C<Marker> to the value of the C<NextMarker> from the current page's
response (which is also the ID of the last distribution on that page).



=head2 MaxItems => Str

The maximum number of distributions you want in the response body.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDistributions2017_10_30 in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

