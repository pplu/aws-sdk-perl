
package Paws::Route53::ListReusableDelegationSets;
  use Moose;
  has Marker => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'marker' );
  has MaxItems => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'maxitems' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListReusableDelegationSets');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2013-04-01/delegationset');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53::ListReusableDelegationSetsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::ListReusableDelegationSets

=head1 ATTRIBUTES


=head2 Marker => Str

If you're making the second or subsequent call to
C<ListReusableDelegationSets>, the C<Marker> element matches the value
that you specified in the C<marker> parameter in the previous request.



=head2 MaxItems => Str

The value that you specified for the C<maxitems> parameter in the
request that produced the current response.




=cut

