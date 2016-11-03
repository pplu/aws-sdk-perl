
package Paws::Route53::GetTrafficPolicy;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', uri_name => 'Id', traits => ['ParamInURI'], required => 1);
  has Version => (is => 'ro', isa => 'Int', uri_name => 'Version', traits => ['ParamInURI'], required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetTrafficPolicy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2013-04-01/trafficpolicy/{Id}/{Version}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53::GetTrafficPolicyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::GetTrafficPolicy - Arguments for method GetTrafficPolicy on Paws::Route53

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetTrafficPolicy on the 
Amazon Route 53 service. Use the attributes of this class
as arguments to method GetTrafficPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetTrafficPolicy.

As an example:

  $service_obj->GetTrafficPolicy(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The ID of the traffic policy that you want to get information about.



=head2 B<REQUIRED> Version => Int

The version number of the traffic policy that you want to get
information about.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetTrafficPolicy in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

