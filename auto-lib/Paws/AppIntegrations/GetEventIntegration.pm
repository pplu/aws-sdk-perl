
package Paws::AppIntegrations::GetEventIntegration;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Name', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetEventIntegration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/eventIntegrations/{Name}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppIntegrations::GetEventIntegrationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppIntegrations::GetEventIntegration - Arguments for method GetEventIntegration on L<Paws::AppIntegrations>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetEventIntegration on the
L<Amazon AppIntegrations Service|Paws::AppIntegrations> service. Use the attributes of this class
as arguments to method GetEventIntegration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetEventIntegration.

=head1 SYNOPSIS

    my $app-integrations = Paws->service('AppIntegrations');
    my $GetEventIntegrationResponse = $app -integrations->GetEventIntegration(
      Name => 'MyName',

    );

    # Results:
    my $Description         = $GetEventIntegrationResponse->Description;
    my $EventBridgeBus      = $GetEventIntegrationResponse->EventBridgeBus;
    my $EventFilter         = $GetEventIntegrationResponse->EventFilter;
    my $EventIntegrationArn = $GetEventIntegrationResponse->EventIntegrationArn;
    my $Name                = $GetEventIntegrationResponse->Name;
    my $Tags                = $GetEventIntegrationResponse->Tags;

    # Returns a L<Paws::AppIntegrations::GetEventIntegrationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/app-integrations/GetEventIntegration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the event integration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetEventIntegration in L<Paws::AppIntegrations>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

