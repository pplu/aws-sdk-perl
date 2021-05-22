
package Paws::KinesisVideoArchivedMedia::GetClip;
  use Moose;
  has ClipFragmentSelector => (is => 'ro', isa => 'Paws::KinesisVideoArchivedMedia::ClipFragmentSelector', required => 1);
  has StreamARN => (is => 'ro', isa => 'Str');
  has StreamName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetClip');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/getClip');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KinesisVideoArchivedMedia::GetClipOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisVideoArchivedMedia::GetClip - Arguments for method GetClip on L<Paws::KinesisVideoArchivedMedia>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetClip on the
L<Amazon Kinesis Video Streams Archived Media|Paws::KinesisVideoArchivedMedia> service. Use the attributes of this class
as arguments to method GetClip.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetClip.

=head1 SYNOPSIS

    my $kinesisvideo = Paws->service('KinesisVideoArchivedMedia');
    my $GetClipOutput = $kinesisvideo->GetClip(
      ClipFragmentSelector => {
        FragmentSelectorType =>
          'PRODUCER_TIMESTAMP',   # values: PRODUCER_TIMESTAMP, SERVER_TIMESTAMP
        TimestampRange => {
          EndTimestamp   => '1970-01-01T01:00:00',
          StartTimestamp => '1970-01-01T01:00:00',

        },

      },
      StreamARN  => 'MyResourceARN',    # OPTIONAL
      StreamName => 'MyStreamName',     # OPTIONAL
    );

    # Results:
    my $ContentType = $GetClipOutput->ContentType;
    my $Payload     = $GetClipOutput->Payload;

    # Returns a L<Paws::KinesisVideoArchivedMedia::GetClipOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kinesisvideo/GetClip>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClipFragmentSelector => L<Paws::KinesisVideoArchivedMedia::ClipFragmentSelector>

The time range of the requested clip and the source of the timestamps.



=head2 StreamARN => Str

The Amazon Resource Name (ARN) of the stream for which to retrieve the
media clip.

You must specify either the StreamName or the StreamARN.



=head2 StreamName => Str

The name of the stream for which to retrieve the media clip.

You must specify either the StreamName or the StreamARN.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetClip in L<Paws::KinesisVideoArchivedMedia>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

