
package Paws::MediaTailor::CreateSourceLocation;
  use Moose;
  has AccessConfiguration => (is => 'ro', isa => 'Paws::MediaTailor::AccessConfiguration');
  has DefaultSegmentDeliveryConfiguration => (is => 'ro', isa => 'Paws::MediaTailor::DefaultSegmentDeliveryConfiguration');
  has HttpConfiguration => (is => 'ro', isa => 'Paws::MediaTailor::HttpConfiguration', required => 1);
  has SourceLocationName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'sourceLocationName', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::MediaTailor::__mapOf__string', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSourceLocation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/sourceLocation/{sourceLocationName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaTailor::CreateSourceLocationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaTailor::CreateSourceLocation - Arguments for method CreateSourceLocation on L<Paws::MediaTailor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateSourceLocation on the
L<AWS MediaTailor|Paws::MediaTailor> service. Use the attributes of this class
as arguments to method CreateSourceLocation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateSourceLocation.

=head1 SYNOPSIS

    my $api.mediatailor = Paws->service('MediaTailor');
    my $CreateSourceLocationResponse = $api . mediatailor->CreateSourceLocation(
      HttpConfiguration => {
        BaseUrl => 'My__string',

      },
      SourceLocationName  => 'My__string',
      AccessConfiguration => {
        AccessType => 'S3_SIGV4',    # values: S3_SIGV4; OPTIONAL
      },    # OPTIONAL
      DefaultSegmentDeliveryConfiguration => { BaseUrl => 'My__string', }
      ,                                             # OPTIONAL
      Tags => { 'My__string' => 'My__string', },    # OPTIONAL
    );

    # Results:
    my $AccessConfiguration =
      $CreateSourceLocationResponse->AccessConfiguration;
    my $Arn          = $CreateSourceLocationResponse->Arn;
    my $CreationTime = $CreateSourceLocationResponse->CreationTime;
    my $DefaultSegmentDeliveryConfiguration =
      $CreateSourceLocationResponse->DefaultSegmentDeliveryConfiguration;
    my $HttpConfiguration  = $CreateSourceLocationResponse->HttpConfiguration;
    my $LastModifiedTime   = $CreateSourceLocationResponse->LastModifiedTime;
    my $SourceLocationName = $CreateSourceLocationResponse->SourceLocationName;
    my $Tags               = $CreateSourceLocationResponse->Tags;

    # Returns a L<Paws::MediaTailor::CreateSourceLocationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.mediatailor/CreateSourceLocation>

=head1 ATTRIBUTES


=head2 AccessConfiguration => L<Paws::MediaTailor::AccessConfiguration>

Access configuration parameters. Configures the type of authentication
used to access content from your source location.



=head2 DefaultSegmentDeliveryConfiguration => L<Paws::MediaTailor::DefaultSegmentDeliveryConfiguration>

The optional configuration for the server that serves segments.



=head2 B<REQUIRED> HttpConfiguration => L<Paws::MediaTailor::HttpConfiguration>

The source's HTTP package configurations.



=head2 B<REQUIRED> SourceLocationName => Str

The identifier for the source location you are working on.



=head2 Tags => L<Paws::MediaTailor::__mapOf__string>

The tags to assign to the source location.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateSourceLocation in L<Paws::MediaTailor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

