
package Paws::MediaTailor::UpdateSourceLocation;
  use Moose;
  has AccessConfiguration => (is => 'ro', isa => 'Paws::MediaTailor::AccessConfiguration');
  has DefaultSegmentDeliveryConfiguration => (is => 'ro', isa => 'Paws::MediaTailor::DefaultSegmentDeliveryConfiguration');
  has HttpConfiguration => (is => 'ro', isa => 'Paws::MediaTailor::HttpConfiguration', required => 1);
  has SourceLocationName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'sourceLocationName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateSourceLocation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/sourceLocation/{sourceLocationName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaTailor::UpdateSourceLocationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaTailor::UpdateSourceLocation - Arguments for method UpdateSourceLocation on L<Paws::MediaTailor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateSourceLocation on the
L<AWS MediaTailor|Paws::MediaTailor> service. Use the attributes of this class
as arguments to method UpdateSourceLocation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateSourceLocation.

=head1 SYNOPSIS

    my $api.mediatailor = Paws->service('MediaTailor');
    my $UpdateSourceLocationResponse = $api . mediatailor->UpdateSourceLocation(
      HttpConfiguration => {
        BaseUrl => 'My__string',

      },
      SourceLocationName  => 'My__string',
      AccessConfiguration => {
        AccessType => 'S3_SIGV4',    # values: S3_SIGV4; OPTIONAL
      },    # OPTIONAL
      DefaultSegmentDeliveryConfiguration => { BaseUrl => 'My__string', }
      ,     # OPTIONAL
    );

    # Results:
    my $AccessConfiguration =
      $UpdateSourceLocationResponse->AccessConfiguration;
    my $Arn          = $UpdateSourceLocationResponse->Arn;
    my $CreationTime = $UpdateSourceLocationResponse->CreationTime;
    my $DefaultSegmentDeliveryConfiguration =
      $UpdateSourceLocationResponse->DefaultSegmentDeliveryConfiguration;
    my $HttpConfiguration  = $UpdateSourceLocationResponse->HttpConfiguration;
    my $LastModifiedTime   = $UpdateSourceLocationResponse->LastModifiedTime;
    my $SourceLocationName = $UpdateSourceLocationResponse->SourceLocationName;
    my $Tags               = $UpdateSourceLocationResponse->Tags;

    # Returns a L<Paws::MediaTailor::UpdateSourceLocationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.mediatailor/UpdateSourceLocation>

=head1 ATTRIBUTES


=head2 AccessConfiguration => L<Paws::MediaTailor::AccessConfiguration>

Access configuration parameters. Configures the type of authentication
used to access content from your source location.



=head2 DefaultSegmentDeliveryConfiguration => L<Paws::MediaTailor::DefaultSegmentDeliveryConfiguration>

The optional configuration for the host server that serves segments.



=head2 B<REQUIRED> HttpConfiguration => L<Paws::MediaTailor::HttpConfiguration>

The HTTP configuration for the source location.



=head2 B<REQUIRED> SourceLocationName => Str

The identifier for the source location you are working on.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateSourceLocation in L<Paws::MediaTailor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

