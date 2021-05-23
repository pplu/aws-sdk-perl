
package Paws::ServiceCatalogAppRegistry::GetApplication;
  use Moose;
  has Application => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'application', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetApplication');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{application}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServiceCatalogAppRegistry::GetApplicationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalogAppRegistry::GetApplication - Arguments for method GetApplication on L<Paws::ServiceCatalogAppRegistry>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetApplication on the
L<AWS Service Catalog App Registry|Paws::ServiceCatalogAppRegistry> service. Use the attributes of this class
as arguments to method GetApplication.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetApplication.

=head1 SYNOPSIS

    my $servicecatalog-appregistry = Paws->service('ServiceCatalogAppRegistry');
    my $GetApplicationResponse = $servicecatalog -appregistry->GetApplication(
      Application => 'MyApplicationSpecifier',

    );

    # Results:
    my $Arn = $GetApplicationResponse->Arn;
    my $AssociatedResourceCount =
      $GetApplicationResponse->AssociatedResourceCount;
    my $CreationTime   = $GetApplicationResponse->CreationTime;
    my $Description    = $GetApplicationResponse->Description;
    my $Id             = $GetApplicationResponse->Id;
    my $LastUpdateTime = $GetApplicationResponse->LastUpdateTime;
    my $Name           = $GetApplicationResponse->Name;
    my $Tags           = $GetApplicationResponse->Tags;

  # Returns a L<Paws::ServiceCatalogAppRegistry::GetApplicationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/servicecatalog-appregistry/GetApplication>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Application => Str

The name or ID of the application.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetApplication in L<Paws::ServiceCatalogAppRegistry>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

