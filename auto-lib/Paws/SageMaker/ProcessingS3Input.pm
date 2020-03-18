package Paws::SageMaker::ProcessingS3Input;
  use Moose;
  has LocalPath => (is => 'ro', isa => 'Str', required => 1);
  has S3CompressionType => (is => 'ro', isa => 'Str');
  has S3DataDistributionType => (is => 'ro', isa => 'Str');
  has S3DataType => (is => 'ro', isa => 'Str', required => 1);
  has S3InputMode => (is => 'ro', isa => 'Str', required => 1);
  has S3Uri => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ProcessingS3Input

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::ProcessingS3Input object:

  $service_obj->Method(Att1 => { LocalPath => $value, ..., S3Uri => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::ProcessingS3Input object:

  $result = $service_obj->Method(...);
  $result->Att1->LocalPath

=head1 DESCRIPTION

Information about where and how you want to obtain the inputs for an
processing job.

=head1 ATTRIBUTES


=head2 B<REQUIRED> LocalPath => Str

  The local path to the Amazon S3 bucket where you want Amazon SageMaker
to download the inputs to run a processing job. C<LocalPath> is an
absolute path to the input data.


=head2 S3CompressionType => Str

  Whether to use C<Gzip> compresion for Amazon S3 storage.


=head2 S3DataDistributionType => Str

  Whether the data stored in Amazon S3 is C<FullyReplicated> or
C<ShardedByS3Key>.


=head2 B<REQUIRED> S3DataType => Str

  Whether you use an C<S3Prefix> or a C<ManifestFile> for the data type.
If you choose C<S3Prefix>, C<S3Uri> identifies a key name prefix.
Amazon SageMaker uses all objects with the specified key name prefix
for the processing job. If you choose C<ManifestFile>, C<S3Uri>
identifies an object that is a manifest file containing a list of
object keys that you want Amazon SageMaker to use for the processing
job.


=head2 B<REQUIRED> S3InputMode => Str

  Wether to use C<File> or C<Pipe> input mode. In C<File> mode, Amazon
SageMaker copies the data from the input source onto the local Amazon
Elastic Block Store (Amazon EBS) volumes before starting your training
algorithm. This is the most commonly used input mode. In C<Pipe> mode,
Amazon SageMaker streams input data from the source directly to your
algorithm without using the EBS volume.


=head2 B<REQUIRED> S3Uri => Str

  The URI for the Amazon S3 storage where you want Amazon SageMaker to
download the artifacts needed to run a processing job.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

