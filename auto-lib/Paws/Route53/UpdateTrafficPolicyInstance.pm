
package Paws::Route53::UpdateTrafficPolicyInstance;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', uri_name => 'Id', traits => ['ParamInURI'], required => 1);
  has TrafficPolicyId => (is => 'ro', isa => 'Str', required => 1);
  has TrafficPolicyVersion => (is => 'ro', isa => 'Int', required => 1);
  has TTL => (is => 'ro', isa => 'Int', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateTrafficPolicyInstance');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2013-04-01/trafficpolicyinstance/{Id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53::UpdateTrafficPolicyInstanceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::UpdateTrafficPolicyInstance - Arguments for method UpdateTrafficPolicyInstance on L<Paws::Route53>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateTrafficPolicyInstance on the
L<Amazon Route 53|Paws::Route53> service. Use the attributes of this class
as arguments to method UpdateTrafficPolicyInstance.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateTrafficPolicyInstance.

=head1 SYNOPSIS

    my $route53 = Paws->service('Route53');
    my $UpdateTrafficPolicyInstanceResponse =
      $route53->UpdateTrafficPolicyInstance(
      Id                   => 'MyTrafficPolicyInstanceId',
      TTL                  => 1,
      TrafficPolicyId      => 'MyTrafficPolicyId',
      TrafficPolicyVersion => 1,

      );

    # Results:
    my $TrafficPolicyInstance =
      $UpdateTrafficPolicyInstanceResponse->TrafficPolicyInstance;

    # Returns a L<Paws::Route53::UpdateTrafficPolicyInstanceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53/UpdateTrafficPolicyInstance>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The ID of the traffic policy instance that you want to update.



=head2 B<REQUIRED> TrafficPolicyId => Str

The ID of the traffic policy that you want Amazon Route 53 to use to
update resource record sets for the specified traffic policy instance.



=head2 B<REQUIRED> TrafficPolicyVersion => Int

The version of the traffic policy that you want Amazon Route 53 to use
to update resource record sets for the specified traffic policy
instance.



=head2 B<REQUIRED> TTL => Int

The TTL that you want Amazon Route 53 to assign to all of the updated
resource record sets.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateTrafficPolicyInstance in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

