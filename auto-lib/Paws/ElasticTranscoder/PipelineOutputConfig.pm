package Paws::ElasticTranscoder::PipelineOutputConfig;
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str');
  has Permissions => (is => 'ro', isa => 'ArrayRef[Paws::ElasticTranscoder::Permission]');
  has StorageClass => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticTranscoder::PipelineOutputConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElasticTranscoder::PipelineOutputConfig object:

  $service_obj->Method(Att1 => { Bucket => $value, ..., StorageClass => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElasticTranscoder::PipelineOutputConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->Bucket

=head1 DESCRIPTION

The C<PipelineOutputConfig> structure.

=head1 ATTRIBUTES


=head2 Bucket => Str

  The Amazon S3 bucket in which you want Elastic Transcoder to save the
transcoded files. Specify this value when all of the following are
true:

=over

=item *

You want to save transcoded files, thumbnails (if any), and playlists
(if any) together in one bucket.

=item *

You do not want to specify the users or groups who have access to the
transcoded files, thumbnails, and playlists.

=item *

You do not want to specify the permissions that Elastic Transcoder
grants to the files.

=item *

You want to associate the transcoded files and thumbnails with the
Amazon S3 Standard storage class.

=back

If you want to save transcoded files and playlists in one bucket and
thumbnails in another bucket, specify which users can access the
transcoded files or the permissions the users have, or change the
Amazon S3 storage class, omit OutputBucket and specify values for
C<ContentConfig> and C<ThumbnailConfig> instead.


=head2 Permissions => ArrayRef[L<Paws::ElasticTranscoder::Permission>]

  Optional. The C<Permissions> object specifies which users and/or
predefined Amazon S3 groups you want to have access to transcoded files
and playlists, and the type of access you want them to have. You can
grant permissions to a maximum of 30 users and/or predefined Amazon S3
groups.

If you include C<Permissions>, Elastic Transcoder grants only the
permissions that you specify. It does not grant full permissions to the
owner of the role specified by C<Role>. If you want that user to have
full control, you must explicitly grant full control to the user.

If you omit C<Permissions>, Elastic Transcoder grants full control over
the transcoded files and playlists to the owner of the role specified
by C<Role>, and grants no other permissions to any other user or group.


=head2 StorageClass => Str

  The Amazon S3 storage class, C<Standard> or C<ReducedRedundancy>, that
you want Elastic Transcoder to assign to the video files and playlists
that it stores in your Amazon S3 bucket.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElasticTranscoder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

