
package Paws::IoT::DeleteOTAUpdate;
  use Moose;
  has DeleteStream => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'deleteStream');
  has ForceDeleteAWSJob => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'forceDeleteAWSJob');
  has OtaUpdateId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'otaUpdateId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteOTAUpdate');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/otaUpdates/{otaUpdateId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::DeleteOTAUpdateResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DeleteOTAUpdate - Arguments for method DeleteOTAUpdate on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteOTAUpdate on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method DeleteOTAUpdate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteOTAUpdate.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $DeleteOTAUpdateResponse = $iot->DeleteOTAUpdate(
      OtaUpdateId       => 'MyOTAUpdateId',
      DeleteStream      => 1,                 # OPTIONAL
      ForceDeleteAWSJob => 1,                 # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/DeleteOTAUpdate>

=head1 ATTRIBUTES


=head2 DeleteStream => Bool

Specifies if the stream associated with an OTA update should be deleted
when the OTA update is deleted.



=head2 ForceDeleteAWSJob => Bool

Specifies if the AWS Job associated with the OTA update should be
deleted with the OTA update is deleted.



=head2 B<REQUIRED> OtaUpdateId => Str

The OTA update ID to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteOTAUpdate in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

