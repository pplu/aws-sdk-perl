
package Paws::Kendra::CreateFaq;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has FileFormat => (is => 'ro', isa => 'Str');
  has IndexId => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);
  has S3Path => (is => 'ro', isa => 'Paws::Kendra::S3Path', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Kendra::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateFaq');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Kendra::CreateFaqResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::CreateFaq - Arguments for method CreateFaq on L<Paws::Kendra>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateFaq on the
L<AWSKendraFrontendService|Paws::Kendra> service. Use the attributes of this class
as arguments to method CreateFaq.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateFaq.

=head1 SYNOPSIS

    my $kendra = Paws->service('Kendra');
    my $CreateFaqResponse = $kendra->CreateFaq(
      IndexId => 'MyIndexId',
      Name    => 'MyFaqName',
      RoleArn => 'MyRoleArn',
      S3Path  => {
        Bucket => 'MyS3BucketName',    # min: 3, max: 63
        Key    => 'MyS3ObjectKey',     # min: 1, max: 1024

      },
      ClientToken => 'MyClientTokenName',    # OPTIONAL
      Description => 'MyDescription',        # OPTIONAL
      FileFormat  => 'CSV',                  # OPTIONAL
      Tags        => [
        {
          Key   => 'MyTagKey',               # min: 1, max: 128
          Value => 'MyTagValue',             # max: 256

        },
        ...
      ],                                     # OPTIONAL
    );

    # Results:
    my $Id = $CreateFaqResponse->Id;

    # Returns a L<Paws::Kendra::CreateFaqResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kendra/CreateFaq>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A token that you provide to identify the request to create a FAQ.
Multiple calls to the C<CreateFaqRequest> operation with the same
client token will create only one FAQ.



=head2 Description => Str

A description of the FAQ.



=head2 FileFormat => Str

The format of the input file. You can choose between a basic CSV
format, a CSV format that includes customs attributes in a header, and
a JSON format that includes custom attributes.

The format must match the format of the file stored in the S3 bucket
identified in the C<S3Path> parameter.

For more information, see Adding questions and answers
(https://docs.aws.amazon.com/kendra/latest/dg/in-creating-faq.html).

Valid values are: C<"CSV">, C<"CSV_WITH_HEADER">, C<"JSON">

=head2 B<REQUIRED> IndexId => Str

The identifier of the index that contains the FAQ.



=head2 B<REQUIRED> Name => Str

The name that should be associated with the FAQ.



=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Name (ARN) of a role with permission to access the
S3 bucket that contains the FAQs. For more information, see IAM Roles
for Amazon Kendra
(https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html).



=head2 B<REQUIRED> S3Path => L<Paws::Kendra::S3Path>

The S3 location of the FAQ input data.



=head2 Tags => ArrayRef[L<Paws::Kendra::Tag>]

A list of key-value pairs that identify the FAQ. You can use the tags
to identify and organize your resources and to control access to
resources.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateFaq in L<Paws::Kendra>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

