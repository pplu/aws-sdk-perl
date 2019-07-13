
package Paws::WorkSpaces::ListAvailableManagementCidrRanges;
  use Moose;
  has ManagementCidrRangeConstraint => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAvailableManagementCidrRanges');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkSpaces::ListAvailableManagementCidrRangesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::ListAvailableManagementCidrRanges - Arguments for method ListAvailableManagementCidrRanges on L<Paws::WorkSpaces>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAvailableManagementCidrRanges on the
L<Amazon WorkSpaces|Paws::WorkSpaces> service. Use the attributes of this class
as arguments to method ListAvailableManagementCidrRanges.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAvailableManagementCidrRanges.

=head1 SYNOPSIS

    my $workspaces = Paws->service('WorkSpaces');
    my $ListAvailableManagementCidrRangesResult =
      $workspaces->ListAvailableManagementCidrRanges(
      ManagementCidrRangeConstraint => 'MyManagementCidrRangeConstraint',
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyPaginationToken',    # OPTIONAL
      );

    # Results:
    my $ManagementCidrRanges =
      $ListAvailableManagementCidrRangesResult->ManagementCidrRanges;
    my $NextToken = $ListAvailableManagementCidrRangesResult->NextToken;

# Returns a L<Paws::WorkSpaces::ListAvailableManagementCidrRangesResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workspaces/ListAvailableManagementCidrRanges>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ManagementCidrRangeConstraint => Str

The IP address range to search. Specify an IP address range that is
compatible with your network and in CIDR notation (that is, specify the
range as an IPv4 CIDR block).



=head2 MaxResults => Int

The maximum number of items to return.



=head2 NextToken => Str

If you received a C<NextToken> from a previous call that was paginated,
provide this token to receive the next set of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAvailableManagementCidrRanges in L<Paws::WorkSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

