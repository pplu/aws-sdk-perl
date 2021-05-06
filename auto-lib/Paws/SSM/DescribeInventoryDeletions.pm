
package Paws::SSM::DescribeInventoryDeletions;
  use Moose;
  has DeletionId => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeInventoryDeletions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::DescribeInventoryDeletionsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::DescribeInventoryDeletions - Arguments for method DescribeInventoryDeletions on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeInventoryDeletions on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method DescribeInventoryDeletions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeInventoryDeletions.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $DescribeInventoryDeletionsResult = $ssm->DescribeInventoryDeletions(
      DeletionId => 'MyInventoryDeletionId',    # OPTIONAL
      MaxResults => 1,                          # OPTIONAL
      NextToken  => 'MyNextToken',              # OPTIONAL
    );

    # Results:
    my $InventoryDeletions =
      $DescribeInventoryDeletionsResult->InventoryDeletions;
    my $NextToken = $DescribeInventoryDeletionsResult->NextToken;

    # Returns a L<Paws::SSM::DescribeInventoryDeletionsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/DescribeInventoryDeletions>

=head1 ATTRIBUTES


=head2 DeletionId => Str

Specify the delete inventory ID for which you want information. This ID
was returned by the C<DeleteInventory> action.



=head2 MaxResults => Int

The maximum number of items to return for this call. The call also
returns a token that you can specify in a subsequent call to get the
next set of results.



=head2 NextToken => Str

A token to start the list. Use this token to get the next set of
results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeInventoryDeletions in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

