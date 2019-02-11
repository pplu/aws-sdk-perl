package Paws::SageMaker::TransformS3DataSource;
  use Moose;
  has S3DataType => (is => 'ro', isa => 'Str', required => 1);
  has S3Uri => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::TransformS3DataSource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::TransformS3DataSource object:

  $service_obj->Method(Att1 => { S3DataType => $value, ..., S3Uri => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::TransformS3DataSource object:

  $result = $service_obj->Method(...);
  $result->Att1->S3DataType

=head1 DESCRIPTION

Describes the S3 data source.

=head1 ATTRIBUTES


=head2 B<REQUIRED> S3DataType => Str

  If you choose C<S3Prefix>, C<S3Uri> identifies a key name prefix.
Amazon SageMaker uses all objects with the specified key name prefix
for batch transform.

If you choose C<ManifestFile>, C<S3Uri> identifies an object that is a
manifest file containing a list of object keys that you want Amazon
SageMaker to use for batch transform.


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

The preceding JSON matches the following C<S3Uris>:

C<s3://customer_bucket/some/prefix/relative/path/to/custdata-1>

C<s3://customer_bucket/some/prefix/relative/path/custdata-1>

C<...>

The complete set of C<S3Uris> in this manifest constitutes the input
data for the channel for this datasource. The object that each
C<S3Uris> points to must be readable by the IAM role that Amazon
SageMaker uses to perform tasks on your behalf.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

