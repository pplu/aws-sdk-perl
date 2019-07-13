
package Paws::WorkSpaces::DescribeWorkspaceImages;
  use Moose;
  has ImageIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeWorkspaceImages');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkSpaces::DescribeWorkspaceImagesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::DescribeWorkspaceImages - Arguments for method DescribeWorkspaceImages on L<Paws::WorkSpaces>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeWorkspaceImages on the
L<Amazon WorkSpaces|Paws::WorkSpaces> service. Use the attributes of this class
as arguments to method DescribeWorkspaceImages.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeWorkspaceImages.

=head1 SYNOPSIS

    my $workspaces = Paws->service('WorkSpaces');
    my $DescribeWorkspaceImagesResult = $workspaces->DescribeWorkspaceImages(
      ImageIds   => [ 'MyWorkspaceImageId', ... ],    # OPTIONAL
      MaxResults => 1,                                # OPTIONAL
      NextToken  => 'MyPaginationToken',              # OPTIONAL
    );

    # Results:
    my $Images    = $DescribeWorkspaceImagesResult->Images;
    my $NextToken = $DescribeWorkspaceImagesResult->NextToken;

    # Returns a L<Paws::WorkSpaces::DescribeWorkspaceImagesResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workspaces/DescribeWorkspaceImages>

=head1 ATTRIBUTES


=head2 ImageIds => ArrayRef[Str|Undef]

The identifier of the image.



=head2 MaxResults => Int

The maximum number of items to return.



=head2 NextToken => Str

If you received a C<NextToken> from a previous call that was paginated,
provide this token to receive the next set of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeWorkspaceImages in L<Paws::WorkSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

