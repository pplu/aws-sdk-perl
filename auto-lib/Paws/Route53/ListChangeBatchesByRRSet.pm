
package Paws::Route53::ListChangeBatchesByRRSet;
  use Moose;
  has EndDate => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'endDate' , required => 1);
  has HostedZoneId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Id' , required => 1);
  has Marker => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'marker' );
  has MaxItems => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'maxItems' );
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'rrSet_name' , required => 1);
  has SetIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'identifier' );
  has StartDate => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'startDate' , required => 1);
  has Type => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'type' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListChangeBatchesByRRSet');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2013-04-01/hostedzone/{Id}/rrsChanges');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53::ListChangeBatchesByRRSetResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::ListChangeBatchesByRRSetResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> EndDate => Str

  The end of the time period you want to see changes for.

=head2 B<REQUIRED> HostedZoneId => Str

  The ID of the hosted zone that you want to see changes for.

=head2 Marker => Str

  The page marker.

=head2 MaxItems => Str

  The maximum number of items on a page.

=head2 B<REQUIRED> Name => Str

  The name of the RRSet that you want to see changes for.

=head2 SetIdentifier => Str

  The identifier of the RRSet that you want to see changes for.

=head2 B<REQUIRED> StartDate => Str

  The start of the time period you want to see changes for.

=head2 B<REQUIRED> Type => Str

  The type of the RRSet that you want to see changes for.


=cut

