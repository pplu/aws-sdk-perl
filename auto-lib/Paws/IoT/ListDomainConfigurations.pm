
package Paws::IoT::ListDomainConfigurations;
  use Moose;
  has Marker => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'marker');
  has PageSize => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'pageSize');
  has ServiceType => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'serviceType');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDomainConfigurations');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/domainConfigurations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::ListDomainConfigurationsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListDomainConfigurations - Arguments for method ListDomainConfigurations on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDomainConfigurations on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method ListDomainConfigurations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDomainConfigurations.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $ListDomainConfigurationsResponse = $iot->ListDomainConfigurations(
      Marker      => 'MyMarker',    # OPTIONAL
      PageSize    => 1,             # OPTIONAL
      ServiceType => 'DATA',        # OPTIONAL
    );

    # Results:
    my $DomainConfigurations =
      $ListDomainConfigurationsResponse->DomainConfigurations;
    my $NextMarker = $ListDomainConfigurationsResponse->NextMarker;

    # Returns a L<Paws::IoT::ListDomainConfigurationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/ListDomainConfigurations>

=head1 ATTRIBUTES


=head2 Marker => Str

The marker for the next set of results.



=head2 PageSize => Int

The result page size.



=head2 ServiceType => Str

The type of service delivered by the endpoint.

Valid values are: C<"DATA">, C<"CREDENTIAL_PROVIDER">, C<"JOBS">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDomainConfigurations in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

