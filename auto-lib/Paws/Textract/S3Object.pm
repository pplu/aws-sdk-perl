# Generated from default/object.tt
package Paws::Textract::S3Object;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Textract::Types qw//;
  has Bucket => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has Version => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Version' => {
                              'type' => 'Str'
                            },
               'Bucket' => {
                             'type' => 'Str'
                           },
               'Name' => {
                           'type' => 'Str'
                         }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Textract::S3Object

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Textract::S3Object object:

  $service_obj->Method(Att1 => { Bucket => $value, ..., Version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Textract::S3Object object:

  $result = $service_obj->Method(...);
  $result->Att1->Bucket

=head1 DESCRIPTION

The S3 bucket name and file name that identifies the document.

The AWS Region for the S3 bucket that contains the document must match
the Region that you use for Amazon Textract operations.

For Amazon Textract to process a file in an S3 bucket, the user must
have permission to access the S3 bucket and file.

=head1 ATTRIBUTES


=head2 Bucket => Str

  The name of the S3 bucket.


=head2 Name => Str

  The file name of the input document. It must be an image file (.JPG or
.PNG format). Asynchronous operations also support PDF files.


=head2 Version => Str

  If the bucket has versioning enabled, you can specify the object
version.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Textract>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

