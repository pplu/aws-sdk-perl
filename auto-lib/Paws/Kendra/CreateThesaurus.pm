
package Paws::Kendra::CreateThesaurus;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has IndexId => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);
  has SourceS3Path => (is => 'ro', isa => 'Paws::Kendra::S3Path', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Kendra::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateThesaurus');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Kendra::CreateThesaurusResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::CreateThesaurus - Arguments for method CreateThesaurus on L<Paws::Kendra>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateThesaurus on the
L<AWSKendraFrontendService|Paws::Kendra> service. Use the attributes of this class
as arguments to method CreateThesaurus.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateThesaurus.

=head1 SYNOPSIS

    my $kendra = Paws->service('Kendra');
    my $CreateThesaurusResponse = $kendra->CreateThesaurus(
      IndexId      => 'MyIndexId',
      Name         => 'MyThesaurusName',
      RoleArn      => 'MyRoleArn',
      SourceS3Path => {
        Bucket => 'MyS3BucketName',    # min: 3, max: 63
        Key    => 'MyS3ObjectKey',     # min: 1, max: 1024

      },
      ClientToken => 'MyClientTokenName',    # OPTIONAL
      Description => 'MyDescription',        # OPTIONAL
      Tags        => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $Id = $CreateThesaurusResponse->Id;

    # Returns a L<Paws::Kendra::CreateThesaurusResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kendra/CreateThesaurus>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A token that you provide to identify the request to create a thesaurus.
Multiple calls to the C<CreateThesaurus> operation with the same client
token will create only one index.



=head2 Description => Str

The description for the new thesaurus.



=head2 B<REQUIRED> IndexId => Str

The unique identifier of the index for the new thesaurus.



=head2 B<REQUIRED> Name => Str

The name for the new thesaurus.



=head2 B<REQUIRED> RoleArn => Str

An AWS Identity and Access Management (IAM) role that gives Amazon
Kendra permissions to access thesaurus file specified in
C<SourceS3Path>.



=head2 B<REQUIRED> SourceS3Path => L<Paws::Kendra::S3Path>

The thesaurus file Amazon S3 source path.



=head2 Tags => ArrayRef[L<Paws::Kendra::Tag>]

A list of key-value pairs that identify the thesaurus. You can use the
tags to identify and organize your resources and to control access to
resources.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateThesaurus in L<Paws::Kendra>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

