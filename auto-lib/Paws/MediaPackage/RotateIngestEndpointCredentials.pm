
package Paws::MediaPackage::RotateIngestEndpointCredentials;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'id', required => 1);
  has IngestEndpointId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ingest_endpoint_id', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RotateIngestEndpointCredentials');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/channels/{id}/ingest_endpoints/{ingest_endpoint_id}/credentials');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaPackage::RotateIngestEndpointCredentialsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackage::RotateIngestEndpointCredentials - Arguments for method RotateIngestEndpointCredentials on L<Paws::MediaPackage>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RotateIngestEndpointCredentials on the
L<AWS Elemental MediaPackage|Paws::MediaPackage> service. Use the attributes of this class
as arguments to method RotateIngestEndpointCredentials.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RotateIngestEndpointCredentials.

=head1 SYNOPSIS

    my $mediapackage = Paws->service('MediaPackage');
    my $RotateIngestEndpointCredentialsResponse =
      $mediapackage->RotateIngestEndpointCredentials(
      Id               => 'My__string',
      IngestEndpointId => 'My__string',

      );

    # Results:
    my $Arn         = $RotateIngestEndpointCredentialsResponse->Arn;
    my $Description = $RotateIngestEndpointCredentialsResponse->Description;
    my $HlsIngest   = $RotateIngestEndpointCredentialsResponse->HlsIngest;
    my $Id          = $RotateIngestEndpointCredentialsResponse->Id;

# Returns a L<Paws::MediaPackage::RotateIngestEndpointCredentialsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediapackage/RotateIngestEndpointCredentials>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The ID of the channel the IngestEndpoint is on.



=head2 B<REQUIRED> IngestEndpointId => Str

The id of the IngestEndpoint whose credentials should be rotated




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RotateIngestEndpointCredentials in L<Paws::MediaPackage>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

