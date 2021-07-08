
package Paws::Kendra::CreateQuerySuggestionsBlockList;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has IndexId => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);
  has SourceS3Path => (is => 'ro', isa => 'Paws::Kendra::S3Path', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Kendra::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateQuerySuggestionsBlockList');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Kendra::CreateQuerySuggestionsBlockListResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::CreateQuerySuggestionsBlockList - Arguments for method CreateQuerySuggestionsBlockList on L<Paws::Kendra>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateQuerySuggestionsBlockList on the
L<AWSKendraFrontendService|Paws::Kendra> service. Use the attributes of this class
as arguments to method CreateQuerySuggestionsBlockList.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateQuerySuggestionsBlockList.

=head1 SYNOPSIS

    my $kendra = Paws->service('Kendra');
    my $CreateQuerySuggestionsBlockListResponse =
      $kendra->CreateQuerySuggestionsBlockList(
      IndexId      => 'MyIndexId',
      Name         => 'MyQuerySuggestionsBlockListName',
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
    my $Id = $CreateQuerySuggestionsBlockListResponse->Id;

    # Returns a L<Paws::Kendra::CreateQuerySuggestionsBlockListResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kendra/CreateQuerySuggestionsBlockList>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A token that you provide to identify the request to create a query
suggestions block list.



=head2 Description => Str

A user-friendly description for the block list.

For example, the description "List of all offensive words that can
appear in user queries and need to be blocked from suggestions."



=head2 B<REQUIRED> IndexId => Str

The identifier of the index you want to create a query suggestions
block list for.



=head2 B<REQUIRED> Name => Str

A user friendly name for the block list.

For example, the block list named 'offensive-words' includes all
offensive words that could appear in user queries and need to be
blocked from suggestions.



=head2 B<REQUIRED> RoleArn => Str

The IAM (Identity and Access Management) role used by Amazon Kendra to
access the block list text file in your S3 bucket.

You need permissions to the role ARN (Amazon Resource Name). The role
needs S3 read permissions to your file in S3 and needs to give STS
(Security Token Service) assume role permissions to Amazon Kendra.



=head2 B<REQUIRED> SourceS3Path => L<Paws::Kendra::S3Path>

The S3 path to your block list text file in your S3 bucket.

Each block word or phrase should be on a separate line in a text file.

For information on the current quota limits for block lists, see Quotas
for Amazon Kendra
(https://docs.aws.amazon.com/kendra/latest/dg/quotas.html).



=head2 Tags => ArrayRef[L<Paws::Kendra::Tag>]

A tag that you can assign to a block list that categorizes the block
list.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateQuerySuggestionsBlockList in L<Paws::Kendra>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

