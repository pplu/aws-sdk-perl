
package Paws::IoT::DescribeDomainConfigurationResponse;
  use Moose;
  has AuthorizerConfig => (is => 'ro', isa => 'Paws::IoT::AuthorizerConfig', traits => ['NameInRequest'], request_name => 'authorizerConfig');
  has DomainConfigurationArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainConfigurationArn');
  has DomainConfigurationName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainConfigurationName');
  has DomainConfigurationStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainConfigurationStatus');
  has DomainName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainName');
  has DomainType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainType');
  has ServerCertificates => (is => 'ro', isa => 'ArrayRef[Paws::IoT::ServerCertificateSummary]', traits => ['NameInRequest'], request_name => 'serverCertificates');
  has ServiceType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceType');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DescribeDomainConfigurationResponse

=head1 ATTRIBUTES


=head2 AuthorizerConfig => L<Paws::IoT::AuthorizerConfig>

An object that specifies the authorization service for a domain.


=head2 DomainConfigurationArn => Str

The ARN of the domain configuration.


=head2 DomainConfigurationName => Str

The name of the domain configuration.


=head2 DomainConfigurationStatus => Str

A Boolean value that specifies the current state of the domain
configuration.

Valid values are: C<"ENABLED">, C<"DISABLED">
=head2 DomainName => Str

The name of the domain.


=head2 DomainType => Str

The type of the domain.

Valid values are: C<"ENDPOINT">, C<"AWS_MANAGED">, C<"CUSTOMER_MANAGED">
=head2 ServerCertificates => ArrayRef[L<Paws::IoT::ServerCertificateSummary>]

A list containing summary information about the server certificate
included in the domain configuration.


=head2 ServiceType => Str

The type of service delivered by the endpoint.

Valid values are: C<"DATA">, C<"CREDENTIAL_PROVIDER">, C<"JOBS">
=head2 _request_id => Str


=cut

