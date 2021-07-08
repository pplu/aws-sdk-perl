
package Paws::LocationService::GetMapStyleDescriptor;
  use Moose;
  has MapName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'MapName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetMapStyleDescriptor');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/maps/v0/maps/{MapName}/style-descriptor');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LocationService::GetMapStyleDescriptorResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::GetMapStyleDescriptor - Arguments for method GetMapStyleDescriptor on L<Paws::LocationService>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetMapStyleDescriptor on the
L<Amazon Location Service|Paws::LocationService> service. Use the attributes of this class
as arguments to method GetMapStyleDescriptor.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetMapStyleDescriptor.

=head1 SYNOPSIS

    my $geo = Paws->service('LocationService');
    my $GetMapStyleDescriptorResponse = $geo->GetMapStyleDescriptor(
      MapName => 'MyResourceName',

    );

    # Results:
    my $Blob        = $GetMapStyleDescriptorResponse->Blob;
    my $ContentType = $GetMapStyleDescriptorResponse->ContentType;

    # Returns a L<Paws::LocationService::GetMapStyleDescriptorResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/geo/GetMapStyleDescriptor>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MapName => Str

The map resource to retrieve the style descriptor from.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetMapStyleDescriptor in L<Paws::LocationService>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

