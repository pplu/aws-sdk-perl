
package Paws::IoT::GetOTAUpdate;
  use Moose;
  has OtaUpdateId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'otaUpdateId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetOTAUpdate');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/otaUpdates/{otaUpdateId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::GetOTAUpdateResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::GetOTAUpdate - Arguments for method GetOTAUpdate on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetOTAUpdate on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method GetOTAUpdate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetOTAUpdate.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $GetOTAUpdateResponse = $iot->GetOTAUpdate(
      OtaUpdateId => 'MyOTAUpdateId',

    );

    # Results:
    my $OtaUpdateInfo = $GetOTAUpdateResponse->OtaUpdateInfo;

    # Returns a L<Paws::IoT::GetOTAUpdateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/GetOTAUpdate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> OtaUpdateId => Str

The OTA update ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetOTAUpdate in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

