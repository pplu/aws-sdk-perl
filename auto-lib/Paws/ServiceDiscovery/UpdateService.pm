
package Paws::ServiceDiscovery::UpdateService;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has Service => (is => 'ro', isa => 'Paws::ServiceDiscovery::ServiceChange', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateService');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServiceDiscovery::UpdateServiceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceDiscovery::UpdateService - Arguments for method UpdateService on L<Paws::ServiceDiscovery>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateService on the
L<AWS Cloud Map|Paws::ServiceDiscovery> service. Use the attributes of this class
as arguments to method UpdateService.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateService.

=head1 SYNOPSIS

    my $servicediscovery = Paws->service('ServiceDiscovery');
    my $UpdateServiceResponse = $servicediscovery->UpdateService(
      Id      => 'MyResourceId',
      Service => {
        DnsConfig => {
          DnsRecords => [
            {
              TTL  => 1,        # max: 2147483647
              Type => 'SRV',    # values: SRV, A, AAAA, CNAME

            },
            ...
          ],

        },
        Description       => 'MyResourceDescription',    # max: 1024; OPTIONAL
        HealthCheckConfig => {
          Type             => 'HTTP',              # values: HTTP, HTTPS, TCP
          FailureThreshold => 1,                   # min: 1, max: 10; OPTIONAL
          ResourcePath     => 'MyResourcePath',    # max: 255; OPTIONAL
        },    # OPTIONAL
      },

    );

    # Results:
    my $OperationId = $UpdateServiceResponse->OperationId;

    # Returns a L<Paws::ServiceDiscovery::UpdateServiceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/servicediscovery/UpdateService>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The ID of the service that you want to update.



=head2 B<REQUIRED> Service => L<Paws::ServiceDiscovery::ServiceChange>

A complex type that contains the new settings for the service.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateService in L<Paws::ServiceDiscovery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

