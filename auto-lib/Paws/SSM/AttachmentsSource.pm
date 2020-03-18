package Paws::SSM::AttachmentsSource;
  use Moose;
  has Key => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Values => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::AttachmentsSource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::AttachmentsSource object:

  $service_obj->Method(Att1 => { Key => $value, ..., Values => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::AttachmentsSource object:

  $result = $service_obj->Method(...);
  $result->Att1->Key

=head1 DESCRIPTION

Identifying information about a document attachment, including the file
name and a key-value pair that identifies the location of an attachment
to a document.

=head1 ATTRIBUTES


=head2 Key => Str

  The key of a key-value pair that identifies the location of an
attachment to a document.


=head2 Name => Str

  The name of the document attachment file.


=head2 Values => ArrayRef[Str|Undef]

  The value of a key-value pair that identifies the location of an
attachment to a document. The format for B<Value> depends on the type
of key you specify.

=over

=item *

For the key I<SourceUrl>, the value is an S3 bucket location. For
example:

C<"Values": [ "s3://my-bucket/my-folder" ]>

=item *

For the key I<S3FileUrl>, the value is a file in an S3 bucket. For
example:

C<"Values": [ "s3://my-bucket/my-folder/my-file.py" ]>

=item *

For the key I<AttachmentReference>, the value is constructed from the
name of another SSM document in your account, a version number of that
document, and a file attached to that document version that you want to
reuse. For example:

C<"Values": [ "MyOtherDocument/3/my-other-file.py" ]>

However, if the SSM document is shared with you from another account,
the full SSM document ARN must be specified instead of the document
name only. For example:

C<"Values": [
"arn:aws:ssm:us-east-2:111122223333:document/OtherAccountDocument/3/their-file.py"
]>

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

