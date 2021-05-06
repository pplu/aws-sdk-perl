
package Paws::IoTData::GetThingShadow;
  use Moose;
  has ThingName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'thingName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetThingShadow');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/things/{thingName}/shadow');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTData::GetThingShadowResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTData::GetThingShadow - Arguments for method GetThingShadow on L<Paws::IoTData>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetThingShadow on the
L<AWS IoT Data Plane|Paws::IoTData> service. Use the attributes of this class
as arguments to method GetThingShadow.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetThingShadow.

=head1 SYNOPSIS

    my $data.iot = Paws->service('IoTData');
    my $GetThingShadowResponse = $data . iot->GetThingShadow(
      ThingName => 'MyThingName',

    );

    # Results:
    my $Payload = $GetThingShadowResponse->Payload;

    # Returns a L<Paws::IoTData::GetThingShadowResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/data.iot/GetThingShadow>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ThingName => Str

The name of the thing.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetThingShadow in L<Paws::IoTData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

