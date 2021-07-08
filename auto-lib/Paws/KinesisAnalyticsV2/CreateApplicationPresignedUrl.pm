
package Paws::KinesisAnalyticsV2::CreateApplicationPresignedUrl;
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has SessionExpirationDurationInSeconds => (is => 'ro', isa => 'Int');
  has UrlType => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateApplicationPresignedUrl');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KinesisAnalyticsV2::CreateApplicationPresignedUrlResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::CreateApplicationPresignedUrl - Arguments for method CreateApplicationPresignedUrl on L<Paws::KinesisAnalyticsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateApplicationPresignedUrl on the
L<Amazon Kinesis Analytics|Paws::KinesisAnalyticsV2> service. Use the attributes of this class
as arguments to method CreateApplicationPresignedUrl.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateApplicationPresignedUrl.

=head1 SYNOPSIS

    my $kinesisanalytics = Paws->service('KinesisAnalyticsV2');
    my $CreateApplicationPresignedUrlResponse =
      $kinesisanalytics->CreateApplicationPresignedUrl(
      ApplicationName                    => 'MyApplicationName',
      UrlType                            => 'FLINK_DASHBOARD_URL',
      SessionExpirationDurationInSeconds => 1,                       # OPTIONAL
      );

    # Results:
    my $AuthorizedUrl = $CreateApplicationPresignedUrlResponse->AuthorizedUrl;

# Returns a L<Paws::KinesisAnalyticsV2::CreateApplicationPresignedUrlResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics/CreateApplicationPresignedUrl>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationName => Str

The name of the application.



=head2 SessionExpirationDurationInSeconds => Int

The duration in seconds for which the returned URL will be valid.



=head2 B<REQUIRED> UrlType => Str

The type of the extension for which to create and return a URL.
Currently, the only valid extension URL type is C<FLINK_DASHBOARD_URL>.

Valid values are: C<"FLINK_DASHBOARD_URL">, C<"ZEPPELIN_UI_URL">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateApplicationPresignedUrl in L<Paws::KinesisAnalyticsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

