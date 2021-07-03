
package Paws::Kendra::BatchPutDocument;
  use Moose;
  has Documents => (is => 'ro', isa => 'ArrayRef[Paws::Kendra::Document]', required => 1);
  has IndexId => (is => 'ro', isa => 'Str', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchPutDocument');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Kendra::BatchPutDocumentResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::BatchPutDocument - Arguments for method BatchPutDocument on L<Paws::Kendra>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchPutDocument on the
L<AWSKendraFrontendService|Paws::Kendra> service. Use the attributes of this class
as arguments to method BatchPutDocument.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchPutDocument.

=head1 SYNOPSIS

    my $kendra = Paws->service('Kendra');
    my $BatchPutDocumentResponse = $kendra->BatchPutDocument(
      Documents => [
        {
          Id                => 'MyDocumentId',    # min: 1, max: 2048
          AccessControlList => [
            {
              Access => 'ALLOW',              # values: ALLOW, DENY
              Name   => 'MyPrincipalName',    # min: 1, max: 200
              Type   => 'USER',               # values: USER, GROUP

            },
            ...
          ],    # min: 1, max: 200; OPTIONAL
          Attributes => [
            {
              Key   => 'MyDocumentAttributeKey',    # min: 1, max: 200
              Value => {
                DateValue       => '1970-01-01T01:00:00',    # OPTIONAL
                LongValue       => 1,                        # OPTIONAL
                StringListValue => [
                  'MyString', ...                            # min: 1, max: 2048
                ],    # min: 1, max: 5; OPTIONAL
                StringValue => 'MyDocumentAttributeStringValue'
                ,     # min: 1, max: 2048; OPTIONAL
              },

            },
            ...
          ],    # min: 1, max: 100; OPTIONAL
          Blob        => 'BlobBlob',    # min: 1, max: 153600; OPTIONAL
          ContentType =>
            'PDF',    # values: PDF, HTML, MS_WORD, PLAIN_TEXT, PPT; OPTIONAL
          S3Path => {
            Bucket => 'MyS3BucketName',    # min: 3, max: 63
            Key    => 'MyS3ObjectKey',     # min: 1, max: 1024

          },    # OPTIONAL
          Title => 'MyTitle',    # min: 1, max: 1024; OPTIONAL
        },
        ...
      ],
      IndexId => 'MyIndexId',
      RoleArn => 'MyRoleArn',    # OPTIONAL
    );

    # Results:
    my $FailedDocuments = $BatchPutDocumentResponse->FailedDocuments;

    # Returns a L<Paws::Kendra::BatchPutDocumentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kendra/BatchPutDocument>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Documents => ArrayRef[L<Paws::Kendra::Document>]

One or more documents to add to the index.

Each document is limited to 5 Mb, the total size of the list is limited
to 50 Mb.



=head2 B<REQUIRED> IndexId => Str

The identifier of the index to add the documents to. You need to create
the index first using the CreateIndex operation.



=head2 RoleArn => Str

The Amazon Resource Name (ARN) of a role that is allowed to run the
C<BatchPutDocument> operation. For more information, see IAM Roles for
Amazon Kendra
(https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchPutDocument in L<Paws::Kendra>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

