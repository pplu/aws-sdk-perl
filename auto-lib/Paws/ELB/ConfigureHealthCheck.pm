
package Paws::ELB::ConfigureHealthCheck;
  use Moose;
  has HealthCheck => (is => 'ro', isa => 'Paws::ELB::HealthCheck', required => 1);
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ConfigureHealthCheck');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ELB::ConfigureHealthCheckOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ConfigureHealthCheckResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELB::ConfigureHealthCheck - Arguments for method ConfigureHealthCheck on L<Paws::ELB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ConfigureHealthCheck on the
L<Elastic Load Balancing|Paws::ELB> service. Use the attributes of this class
as arguments to method ConfigureHealthCheck.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ConfigureHealthCheck.

=head1 SYNOPSIS

    my $elasticloadbalancing = Paws->service('ELB');
    # To specify the health check settings for your backend EC2 instances
    # This example specifies the health check settings used to evaluate the
    # health of your backend EC2 instances.
    my $ConfigureHealthCheckOutput =
      $elasticloadbalancing->ConfigureHealthCheck(
      {
        'HealthCheck' => {
          'HealthyThreshold'   => 2,
          'Interval'           => 30,
          'Target'             => 'HTTP:80/png',
          'Timeout'            => 3,
          'UnhealthyThreshold' => 2
        },
        'LoadBalancerName' => 'my-load-balancer'
      }
      );

    # Results:
    my $HealthCheck = $ConfigureHealthCheckOutput->HealthCheck;

    # Returns a L<Paws::ELB::ConfigureHealthCheckOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing/ConfigureHealthCheck>

=head1 ATTRIBUTES


=head2 B<REQUIRED> HealthCheck => L<Paws::ELB::HealthCheck>

The configuration information.



=head2 B<REQUIRED> LoadBalancerName => Str

The name of the load balancer.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ConfigureHealthCheck in L<Paws::ELB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

