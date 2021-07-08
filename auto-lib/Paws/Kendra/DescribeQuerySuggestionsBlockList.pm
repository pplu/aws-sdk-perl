
package Paws::Kendra::DescribeQuerySuggestionsBlockList;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has IndexId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeQuerySuggestionsBlockList');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Kendra::DescribeQuerySuggestionsBlockListResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::DescribeQuerySuggestionsBlockList - Arguments for method DescribeQuerySuggestionsBlockList on L<Paws::Kendra>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeQuerySuggestionsBlockList on the
L<AWSKendraFrontendService|Paws::Kendra> service. Use the attributes of this class
as arguments to method DescribeQuerySuggestionsBlockList.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeQuerySuggestionsBlockList.

=head1 SYNOPSIS

    my $kendra = Paws->service('Kendra');
    my $DescribeQuerySuggestionsBlockListResponse =
      $kendra->DescribeQuerySuggestionsBlockList(
      Id      => 'MyQuerySuggestionsBlockListId',
      IndexId => 'MyIndexId',

      );

    # Results:
    my $CreatedAt    = $DescribeQuerySuggestionsBlockListResponse->CreatedAt;
    my $Description  = $DescribeQuerySuggestionsBlockListResponse->Description;
    my $ErrorMessage = $DescribeQuerySuggestionsBlockListResponse->ErrorMessage;
    my $FileSizeBytes =
      $DescribeQuerySuggestionsBlockListResponse->FileSizeBytes;
    my $Id           = $DescribeQuerySuggestionsBlockListResponse->Id;
    my $IndexId      = $DescribeQuerySuggestionsBlockListResponse->IndexId;
    my $ItemCount    = $DescribeQuerySuggestionsBlockListResponse->ItemCount;
    my $Name         = $DescribeQuerySuggestionsBlockListResponse->Name;
    my $RoleArn      = $DescribeQuerySuggestionsBlockListResponse->RoleArn;
    my $SourceS3Path = $DescribeQuerySuggestionsBlockListResponse->SourceS3Path;
    my $Status       = $DescribeQuerySuggestionsBlockListResponse->Status;
    my $UpdatedAt    = $DescribeQuerySuggestionsBlockListResponse->UpdatedAt;

  # Returns a L<Paws::Kendra::DescribeQuerySuggestionsBlockListResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kendra/DescribeQuerySuggestionsBlockList>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The unique identifier of the block list.



=head2 B<REQUIRED> IndexId => Str

The identifier of the index for the block list.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeQuerySuggestionsBlockList in L<Paws::Kendra>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

