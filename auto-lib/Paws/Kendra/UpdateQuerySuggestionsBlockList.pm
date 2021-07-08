
package Paws::Kendra::UpdateQuerySuggestionsBlockList;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has IndexId => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str');
  has RoleArn => (is => 'ro', isa => 'Str');
  has SourceS3Path => (is => 'ro', isa => 'Paws::Kendra::S3Path');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateQuerySuggestionsBlockList');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::UpdateQuerySuggestionsBlockList - Arguments for method UpdateQuerySuggestionsBlockList on L<Paws::Kendra>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateQuerySuggestionsBlockList on the
L<AWSKendraFrontendService|Paws::Kendra> service. Use the attributes of this class
as arguments to method UpdateQuerySuggestionsBlockList.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateQuerySuggestionsBlockList.

=head1 SYNOPSIS

    my $kendra = Paws->service('Kendra');
    $kendra->UpdateQuerySuggestionsBlockList(
      Id           => 'MyQuerySuggestionsBlockListId',
      IndexId      => 'MyIndexId',
      Description  => 'MyDescription',                      # OPTIONAL
      Name         => 'MyQuerySuggestionsBlockListName',    # OPTIONAL
      RoleArn      => 'MyRoleArn',                          # OPTIONAL
      SourceS3Path => {
        Bucket => 'MyS3BucketName',                         # min: 3, max: 63
        Key    => 'MyS3ObjectKey',                          # min: 1, max: 1024

      },    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kendra/UpdateQuerySuggestionsBlockList>

=head1 ATTRIBUTES


=head2 Description => Str

The description for a block list.



=head2 B<REQUIRED> Id => Str

The unique identifier of a block list.



=head2 B<REQUIRED> IndexId => Str

The identifier of the index for a block list.



=head2 Name => Str

The name of a block list.



=head2 RoleArn => Str

The IAM (Identity and Access Management) role used to access the block
list text file in S3.



=head2 SourceS3Path => L<Paws::Kendra::S3Path>

The S3 path where your block list text file sits in S3.

If you update your block list and provide the same path to the block
list text file in S3, then Amazon Kendra reloads the file to refresh
the block list. Amazon Kendra does not automatically refresh your block
list. You need to call the C<UpdateQuerySuggestionsBlockList> API to
refresh you block list.

If you update your block list, then Amazon Kendra asynchronously
refreshes all query suggestions with the latest content in the S3 file.
This means changes might not take effect immediately.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateQuerySuggestionsBlockList in L<Paws::Kendra>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

