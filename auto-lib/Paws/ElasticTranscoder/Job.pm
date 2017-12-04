package Paws::ElasticTranscoder::Job;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has Input => (is => 'ro', isa => 'Paws::ElasticTranscoder::JobInput');
  has Inputs => (is => 'ro', isa => 'ArrayRef[Paws::ElasticTranscoder::JobInput]');
  has Output => (is => 'ro', isa => 'Paws::ElasticTranscoder::JobOutput');
  has OutputKeyPrefix => (is => 'ro', isa => 'Str');
  has Outputs => (is => 'ro', isa => 'ArrayRef[Paws::ElasticTranscoder::JobOutput]');
  has PipelineId => (is => 'ro', isa => 'Str');
  has Playlists => (is => 'ro', isa => 'ArrayRef[Paws::ElasticTranscoder::Playlist]');
  has Status => (is => 'ro', isa => 'Str');
  has Timing => (is => 'ro', isa => 'Paws::ElasticTranscoder::Timing');
  has UserMetadata => (is => 'ro', isa => 'Paws::ElasticTranscoder::UserMetadata');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticTranscoder::Job

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElasticTranscoder::Job object:

  $service_obj->Method(Att1 => { Arn => $value, ..., UserMetadata => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElasticTranscoder::Job object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

A section of the response body that provides information about the job
that is created.

=head1 ATTRIBUTES


=head2 Arn => Str

  The Amazon Resource Name (ARN) for the job.


=head2 Id => Str

  The identifier that Elastic Transcoder assigned to the job. You use
this value to get settings for the job or to delete the job.


=head2 Input => L<Paws::ElasticTranscoder::JobInput>

  A section of the request or response body that provides information
about the file that is being transcoded.


=head2 Inputs => ArrayRef[L<Paws::ElasticTranscoder::JobInput>]

  Information about the files that you're transcoding. If you specified
multiple files for this job, Elastic Transcoder stitches the files
together to make one output.


=head2 Output => L<Paws::ElasticTranscoder::JobOutput>

  If you specified one output for a job, information about that output.
If you specified multiple outputs for a job, the Output object lists
information about the first output. This duplicates the information
that is listed for the first output in the Outputs object.

Outputs recommended instead.

A section of the request or response body that provides information
about the transcoded (target) file.


=head2 OutputKeyPrefix => Str

  The value, if any, that you want Elastic Transcoder to prepend to the
names of all files that this job creates, including output files,
thumbnails, and playlists. We recommend that you add a / or some other
delimiter to the end of the C<OutputKeyPrefix>.


=head2 Outputs => ArrayRef[L<Paws::ElasticTranscoder::JobOutput>]

  Information about the output files. We recommend that you use the
C<Outputs> syntax for all jobs, even when you want Elastic Transcoder
to transcode a file into only one format. Do not use both the
C<Outputs> and C<Output> syntaxes in the same request. You can create a
maximum of 30 outputs per job.

If you specify more than one output for a job, Elastic Transcoder
creates the files for each output in the order in which you specify
them in the job.


=head2 PipelineId => Str

  The C<Id> of the pipeline that you want Elastic Transcoder to use for
transcoding. The pipeline determines several settings, including the
Amazon S3 bucket from which Elastic Transcoder gets the files to
transcode and the bucket into which Elastic Transcoder puts the
transcoded files.


=head2 Playlists => ArrayRef[L<Paws::ElasticTranscoder::Playlist>]

  Outputs in Fragmented MP4 or MPEG-TS format only.

If you specify a preset in C<PresetId> for which the value of
C<Container> is fmp4 (Fragmented MP4) or ts (MPEG-TS), C<Playlists>
contains information about the master playlists that you want Elastic
Transcoder to create.

The maximum number of master playlists in a job is 30.


=head2 Status => Str

  The status of the job: C<Submitted>, C<Progressing>, C<Complete>,
C<Canceled>, or C<Error>.


=head2 Timing => L<Paws::ElasticTranscoder::Timing>

  Details about the timing of a job.


=head2 UserMetadata => L<Paws::ElasticTranscoder::UserMetadata>

  User-defined metadata that you want to associate with an Elastic
Transcoder job. You specify metadata in C<key/value> pairs, and you can
add up to 10 C<key/value> pairs per job. Elastic Transcoder does not
guarantee that C<key/value> pairs are returned in the same order in
which you specify them.

Metadata C<keys> and C<values> must use characters from the following
list:

=over

=item *

C<0-9>

=item *

C<A-Z> and C<a-z>

=item *

C<Space>

=item *

The following symbols: C<_.:/=+-%@>

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElasticTranscoder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

