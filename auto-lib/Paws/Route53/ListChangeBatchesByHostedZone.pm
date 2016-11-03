
package Paws::Route53::ListChangeBatchesByHostedZone;
  use Moose;
  has EndDate => (is => 'ro', isa => 'Str', query_name => 'endDate', traits => ['ParamInQuery'], required => 1);
  has HostedZoneId => (is => 'ro', isa => 'Str', uri_name => 'Id', traits => ['ParamInURI'], required => 1);
  has Marker => (is => 'ro', isa => 'Str', query_name => 'marker', traits => ['ParamInQuery']);
  has MaxItems => (is => 'ro', isa => 'Str', query_name => 'maxItems', traits => ['ParamInQuery']);
  has StartDate => (is => 'ro', isa => 'Str', query_name => 'startDate', traits => ['ParamInQuery'], required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListChangeBatchesByHostedZone');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2013-04-01/hostedzone/{Id}/changes');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53::ListChangeBatchesByHostedZoneResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::ListChangeBatchesByHostedZone - Arguments for method ListChangeBatchesByHostedZone on Paws::Route53

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListChangeBatchesByHostedZone on the 
Amazon Route 53 service. Use the attributes of this class
as arguments to method ListChangeBatchesByHostedZone.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListChangeBatchesByHostedZone.

As an example:

  $service_obj->ListChangeBatchesByHostedZone(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> EndDate => Str

The end of the time period you want to see changes for.



=head2 B<REQUIRED> HostedZoneId => Str

The ID of the hosted zone that you want to see changes for.



=head2 Marker => Str

The page marker.



=head2 MaxItems => Str

The maximum number of items on a page.



=head2 B<REQUIRED> StartDate => Str

The start of the time period you want to see changes for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListChangeBatchesByHostedZone in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

