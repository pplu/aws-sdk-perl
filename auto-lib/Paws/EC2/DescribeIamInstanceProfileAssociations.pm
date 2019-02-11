
package Paws::EC2::DescribeIamInstanceProfileAssociations;
  use Moose;
  has AssociationIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'AssociationId' );
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeIamInstanceProfileAssociations');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DescribeIamInstanceProfileAssociationsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeIamInstanceProfileAssociations - Arguments for method DescribeIamInstanceProfileAssociations on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeIamInstanceProfileAssociations on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DescribeIamInstanceProfileAssociations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeIamInstanceProfileAssociations.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $DescribeIamInstanceProfileAssociationsResult =
      $ec2->DescribeIamInstanceProfileAssociations(
      AssociationIds => [ 'MyString', ... ],    # OPTIONAL
      Filters        => [
        {
          Name   => 'MyString',
          Values => [ 'MyString', ... ],        # OPTIONAL
        },
        ...
      ],                                        # OPTIONAL
      MaxResults => 1,                          # OPTIONAL
      NextToken  => 'MyNextToken',              # OPTIONAL
      );

    # Results:
    my $IamInstanceProfileAssociations =
      $DescribeIamInstanceProfileAssociationsResult
      ->IamInstanceProfileAssociations;
    my $NextToken = $DescribeIamInstanceProfileAssociationsResult->NextToken;

  # Returns a L<Paws::EC2::DescribeIamInstanceProfileAssociationsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DescribeIamInstanceProfileAssociations>

=head1 ATTRIBUTES


=head2 AssociationIds => ArrayRef[Str|Undef]

One or more IAM instance profile associations.



=head2 Filters => ArrayRef[L<Paws::EC2::Filter>]

One or more filters.

=over

=item *

C<instance-id> - The ID of the instance.

=item *

C<state> - The state of the association (C<associating> | C<associated>
| C<disassociating> | C<disassociated>).

=back




=head2 MaxResults => Int

The maximum number of results to return in a single call. To retrieve
the remaining results, make another call with the returned C<NextToken>
value.



=head2 NextToken => Str

The token to request the next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeIamInstanceProfileAssociations in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

