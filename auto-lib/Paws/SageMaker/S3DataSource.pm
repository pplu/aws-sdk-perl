package Paws::SageMaker::S3DataSource;
  use Moose;
  has AttributeNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has S3DataDistributionType => (is => 'ro', isa => 'Str');
  has S3DataType => (is => 'ro', isa => 'Str', required => 1);
  has S3Uri => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::S3DataSource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::S3DataSource object:

  $service_obj->Method(Att1 => { AttributeNames => $value, ..., S3Uri => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::S3DataSource object:

  $result = $service_obj->Method(...);
  $result->Att1->AttributeNames

=head1 DESCRIPTION

Describes the S3 data source.

=head1 ATTRIBUTES


=head2 AttributeNames => ArrayRef[Str|Undef]

  A list of one or more attribute names to use that are found in a
specified augmented manifest file.


=head2 S3DataDistributionType => Str

  If you want Amazon SageMaker to replicate the entire dataset on each ML
compute instance that is launched for model training, specify
C<FullyReplicated>.

If you want Amazon SageMaker to replicate a subset of data on each ML
compute instance that is launched for model training, specify
C<ShardedByS3Key>. If there are I<n> ML compute instances launched for
a training job, each instance gets approximately 1/I<n> of the number
of S3 objects. In this case, model training on each machine uses only
the subset of training data.

Don't choose more ML compute instances for training than available S3
objects. If you do, some nodes won't get any data and you will pay for
nodes that aren't getting any training data. This applies in both File
and Pipe modes. Keep this in mind when developing algorithms.

In distributed training, where you use multiple ML compute EC2
instances, you might choose C<ShardedByS3Key>. If the algorithm
requires copying training data to the ML storage volume (when
C<TrainingInputMode> is set to C<File>), this copies 1/I<n> of the
number of objects.


=head2 B<REQUIRED> S3DataType => Str

  If you choose C<S3Prefix>, C<S3Uri> identifies a key name prefix.
Amazon SageMaker uses all objects that match the specified key name
prefix for model training.

If you choose C<ManifestFile>, C<S3Uri> identifies an object that is a
manifest file containing a list of object keys that you want Amazon
SageMaker to use for model training.

If you choose C<AugmentedManifestFile>, S3Uri identifies an object that
is an augmented manifest file in JSON lines format. This file contains
the data you want to use for model training. C<AugmentedManifestFile>
can only be used if the Channel's input mode is C<Pipe>.


=head2 B<REQUIRED> S3Uri => Str

  Depending on the value specified for the C<S3DataType>, identifies
either a key name prefix or a manifest. For example:

=over

=item *

A key name prefix might look like this:
C<s3://bucketname/exampleprefix>.

=item *

A manifest might look like this: C<s3://bucketname/example.manifest>

The manifest is an S3 object which is a JSON file with the following
format:

C<[>

C<{"prefix": "s3://customer_bucket/some/prefix/"},>

C<"relative/path/to/custdata-1",>

C<"relative/path/custdata-2",>

C<...>

C<]>

The preceding JSON matches the following C<s3Uris>:

C<s3://customer_bucket/some/prefix/relative/path/to/custdata-1>

C<s3://customer_bucket/some/prefix/relative/path/custdata-2>

C<...>

The complete set of C<s3uris> in this manifest is the input data for
the channel for this datasource. The object that each C<s3uris> points
to must be readable by the IAM role that Amazon SageMaker uses to
perform tasks on your behalf.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

