
package Paws::IoT::DescribeDomainConfiguration;
  use Moose;
  has DomainConfigurationName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainConfigurationName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDomainConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/domainConfigurations/{domainConfigurationName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::DescribeDomainConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DescribeDomainConfiguration - Arguments for method DescribeDomainConfiguration on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeDomainConfiguration on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method DescribeDomainConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeDomainConfiguration.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $DescribeDomainConfigurationResponse = $iot->DescribeDomainConfiguration(
      DomainConfigurationName => 'MyReservedDomainConfigurationName',

    );

    # Results:
    my $AuthorizerConfig =
      $DescribeDomainConfigurationResponse->AuthorizerConfig;
    my $DomainConfigurationArn =
      $DescribeDomainConfigurationResponse->DomainConfigurationArn;
    my $DomainConfigurationName =
      $DescribeDomainConfigurationResponse->DomainConfigurationName;
    my $DomainConfigurationStatus =
      $DescribeDomainConfigurationResponse->DomainConfigurationStatus;
    my $DomainName = $DescribeDomainConfigurationResponse->DomainName;
    my $DomainType = $DescribeDomainConfigurationResponse->DomainType;
    my $LastStatusChangeDate =
      $DescribeDomainConfigurationResponse->LastStatusChangeDate;
    my $ServerCertificates =
      $DescribeDomainConfigurationResponse->ServerCertificates;
    my $ServiceType = $DescribeDomainConfigurationResponse->ServiceType;

    # Returns a L<Paws::IoT::DescribeDomainConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/DescribeDomainConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainConfigurationName => Str

The name of the domain configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeDomainConfiguration in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

