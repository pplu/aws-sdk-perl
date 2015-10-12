
package Paws::IoT::ListPrincipalThings;
  use Moose;
  has maxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults' );
  has nextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken' );
  has principal => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amzn-principal' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListPrincipalThings');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/principals/things');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::ListPrincipalThingsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListPrincipalThingsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListPrincipalThings - Arguments for method ListPrincipalThings on Paws::IoT

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListPrincipalThings on the 
AWS IoT service. Use the attributes of this class
as arguments to method ListPrincipalThings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListPrincipalThings.

As an example:

  $service_obj->ListPrincipalThings(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 maxResults => Int

  

=head2 nextToken => Str

  

=head2 B<REQUIRED> principal => Str

  The principal.



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListPrincipalThings in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

