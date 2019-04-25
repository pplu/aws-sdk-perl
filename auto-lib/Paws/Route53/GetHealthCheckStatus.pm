
package Paws::Route53::GetHealthCheckStatus;
  use Moose;
  has HealthCheckId => (is => 'ro', isa => 'Str', uri_name => 'HealthCheckId', traits => ['ParamInURI'], required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetHealthCheckStatus');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2013-04-01/healthcheck/{HealthCheckId}/status');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53::GetHealthCheckStatusResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::GetHealthCheckStatus - Arguments for method GetHealthCheckStatus on L<Paws::Route53>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetHealthCheckStatus on the
L<Amazon Route 53|Paws::Route53> service. Use the attributes of this class
as arguments to method GetHealthCheckStatus.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetHealthCheckStatus.

=head1 SYNOPSIS

    my $route53 = Paws->service('Route53');
    my $GetHealthCheckStatusResponse = $route53->GetHealthCheckStatus(
      HealthCheckId => 'MyHealthCheckId',

    );

    # Results:
    my $HealthCheckObservations =
      $GetHealthCheckStatusResponse->HealthCheckObservations;

    # Returns a L<Paws::Route53::GetHealthCheckStatusResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53/GetHealthCheckStatus>

=head1 ATTRIBUTES


=head2 B<REQUIRED> HealthCheckId => Str

The ID for the health check that you want the current status for. When
you created the health check, C<CreateHealthCheck> returned the ID in
the response, in the C<HealthCheckId> element.

If you want to check the status of a calculated health check, you must
use the Amazon Route 53 console or the CloudWatch console. You can't
use C<GetHealthCheckStatus> to get the status of a calculated health
check.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetHealthCheckStatus in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

