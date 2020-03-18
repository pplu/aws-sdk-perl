
package Paws::WorkSpaces::DescribeIpGroups;
  use Moose;
  has GroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeIpGroups');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkSpaces::DescribeIpGroupsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::DescribeIpGroups - Arguments for method DescribeIpGroups on L<Paws::WorkSpaces>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeIpGroups on the
L<Amazon WorkSpaces|Paws::WorkSpaces> service. Use the attributes of this class
as arguments to method DescribeIpGroups.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeIpGroups.

=head1 SYNOPSIS

    my $workspaces = Paws->service('WorkSpaces');
    my $DescribeIpGroupsResult = $workspaces->DescribeIpGroups(
      GroupIds   => [ 'MyIpGroupId', ... ],    # OPTIONAL
      MaxResults => 1,                         # OPTIONAL
      NextToken  => 'MyPaginationToken',       # OPTIONAL
    );

    # Results:
    my $NextToken = $DescribeIpGroupsResult->NextToken;
    my $Result    = $DescribeIpGroupsResult->Result;

    # Returns a L<Paws::WorkSpaces::DescribeIpGroupsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workspaces/DescribeIpGroups>

=head1 ATTRIBUTES


=head2 GroupIds => ArrayRef[Str|Undef]

The identifiers of one or more IP access control groups.



=head2 MaxResults => Int

The maximum number of items to return.



=head2 NextToken => Str

If you received a C<NextToken> from a previous call that was paginated,
provide this token to receive the next set of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeIpGroups in L<Paws::WorkSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

