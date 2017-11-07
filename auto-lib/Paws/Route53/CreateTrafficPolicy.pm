
package Paws::Route53::CreateTrafficPolicy;
  use Moose;
  has Comment => (is => 'ro', isa => 'Str');
  has Document => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateTrafficPolicy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2013-04-01/trafficpolicy');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53::CreateTrafficPolicyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::CreateTrafficPolicy - Arguments for method CreateTrafficPolicy on L<Paws::Route53>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateTrafficPolicy on the 
Amazon Route 53 service. Use the attributes of this class
as arguments to method CreateTrafficPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateTrafficPolicy.

As an example:

  $service_obj->CreateTrafficPolicy(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 Comment => Str

(Optional) Any comments that you want to include about the traffic
policy.



=head2 B<REQUIRED> Document => Str

The definition of this traffic policy in JSON format. For more
information, see Traffic Policy Document Format.



=head2 B<REQUIRED> Name => Str

The name of the traffic policy.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateTrafficPolicy in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

