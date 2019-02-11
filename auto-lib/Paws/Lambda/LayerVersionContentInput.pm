package Paws::Lambda::LayerVersionContentInput;
  use Moose;
  has S3Bucket => (is => 'ro', isa => 'Str');
  has S3Key => (is => 'ro', isa => 'Str');
  has S3ObjectVersion => (is => 'ro', isa => 'Str');
  has ZipFile => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::LayerVersionContentInput

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Lambda::LayerVersionContentInput object:

  $service_obj->Method(Att1 => { S3Bucket => $value, ..., ZipFile => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Lambda::LayerVersionContentInput object:

  $result = $service_obj->Method(...);
  $result->Att1->S3Bucket

=head1 DESCRIPTION

A ZIP archive that contains the contents of an AWS Lambda layer
(http://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html).
You can specify either an Amazon S3 location, or upload a layer archive
directly.

=head1 ATTRIBUTES


=head2 S3Bucket => Str

  The Amazon S3 bucket of the layer archive.


=head2 S3Key => Str

  The Amazon S3 key of the layer archive.


=head2 S3ObjectVersion => Str

  For versioned objects, the version of the layer archive object to use.


=head2 ZipFile => Str

  The base64-encoded contents of the layer archive. AWS SDK and AWS CLI
clients handle the encoding for you.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Lambda>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

