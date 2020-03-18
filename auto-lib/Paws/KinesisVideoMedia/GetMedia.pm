
package Paws::KinesisVideoMedia::GetMedia;
  use Moose;
  has StartSelector => (is => 'ro', isa => 'Paws::KinesisVideoMedia::StartSelector', required => 1);
  has StreamARN => (is => 'ro', isa => 'Str');
  has StreamName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetMedia');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/getMedia');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KinesisVideoMedia::GetMediaOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisVideoMedia::GetMedia - Arguments for method GetMedia on L<Paws::KinesisVideoMedia>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetMedia on the
L<Amazon Kinesis Video Streams Media|Paws::KinesisVideoMedia> service. Use the attributes of this class
as arguments to method GetMedia.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetMedia.

=head1 SYNOPSIS

    my $kinesisvideo = Paws->service('KinesisVideoMedia');
    my $GetMediaOutput = $kinesisvideo->GetMedia(
      StartSelector => {
        StartSelectorType => 'FRAGMENT_NUMBER'
        , # values: FRAGMENT_NUMBER, SERVER_TIMESTAMP, PRODUCER_TIMESTAMP, NOW, EARLIEST, CONTINUATION_TOKEN
        AfterFragmentNumber =>
          'MyFragmentNumberString',    # min: 1, max: 128; OPTIONAL
        ContinuationToken => 'MyContinuationToken', # min: 1, max: 128; OPTIONAL
        StartTimestamp    => '1970-01-01T01:00:00', # OPTIONAL
      },
      StreamARN  => 'MyResourceARN',                # OPTIONAL
      StreamName => 'MyStreamName',                 # OPTIONAL
    );

    # Results:
    my $ContentType = $GetMediaOutput->ContentType;
    my $Payload     = $GetMediaOutput->Payload;

    # Returns a L<Paws::KinesisVideoMedia::GetMediaOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kinesisvideo/GetMedia>

=head1 ATTRIBUTES


=head2 B<REQUIRED> StartSelector => L<Paws::KinesisVideoMedia::StartSelector>

Identifies the starting chunk to get from the specified stream.



=head2 StreamARN => Str

The ARN of the stream from where you want to get the media content. If
you don't specify the C<streamARN>, you must specify the C<streamName>.



=head2 StreamName => Str

The Kinesis video stream name from where you want to get the media
content. If you don't specify the C<streamName>, you must specify the
C<streamARN>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetMedia in L<Paws::KinesisVideoMedia>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

