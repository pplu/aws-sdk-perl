
package Paws::WorkSpaces::DescribeAccountModifications;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAccountModifications');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkSpaces::DescribeAccountModificationsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::DescribeAccountModifications - Arguments for method DescribeAccountModifications on L<Paws::WorkSpaces>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeAccountModifications on the
L<Amazon WorkSpaces|Paws::WorkSpaces> service. Use the attributes of this class
as arguments to method DescribeAccountModifications.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeAccountModifications.

=head1 SYNOPSIS

    my $workspaces = Paws->service('WorkSpaces');
    my $DescribeAccountModificationsResult =
      $workspaces->DescribeAccountModifications(
      NextToken => 'MyPaginationToken',    # OPTIONAL
      );

    # Results:
    my $AccountModifications =
      $DescribeAccountModificationsResult->AccountModifications;
    my $NextToken = $DescribeAccountModificationsResult->NextToken;

    # Returns a L<Paws::WorkSpaces::DescribeAccountModificationsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workspaces/DescribeAccountModifications>

=head1 ATTRIBUTES


=head2 NextToken => Str

If you received a C<NextToken> from a previous call that was paginated,
provide this token to receive the next set of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeAccountModifications in L<Paws::WorkSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

