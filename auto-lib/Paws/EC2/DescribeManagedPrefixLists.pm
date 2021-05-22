
package Paws::EC2::DescribeManagedPrefixLists;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has PrefixListIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'PrefixListId' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeManagedPrefixLists');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DescribeManagedPrefixListsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeManagedPrefixLists - Arguments for method DescribeManagedPrefixLists on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeManagedPrefixLists on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DescribeManagedPrefixLists.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeManagedPrefixLists.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $DescribeManagedPrefixListsResult = $ec2->DescribeManagedPrefixLists(
      DryRun  => 1,    # OPTIONAL
      Filters => [
        {
          Name   => 'MyString',
          Values => [ 'MyString', ... ],    # OPTIONAL
        },
        ...
      ],                                    # OPTIONAL
      MaxResults    => 1,                   # OPTIONAL
      NextToken     => 'MyNextToken',       # OPTIONAL
      PrefixListIds => [ 'MyString', ... ], # OPTIONAL
    );

    # Results:
    my $NextToken   = $DescribeManagedPrefixListsResult->NextToken;
    my $PrefixLists = $DescribeManagedPrefixListsResult->PrefixLists;

    # Returns a L<Paws::EC2::DescribeManagedPrefixListsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DescribeManagedPrefixLists>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Filters => ArrayRef[L<Paws::EC2::Filter>]

One or more filters.

=over

=item *

C<owner-id> - The ID of the prefix list owner.

=item *

C<prefix-list-id> - The ID of the prefix list.

=item *

C<prefix-list-name> - The name of the prefix list.

=back




=head2 MaxResults => Int

The maximum number of results to return with a single call. To retrieve
the remaining results, make another call with the returned C<nextToken>
value.



=head2 NextToken => Str

The token for the next page of results.



=head2 PrefixListIds => ArrayRef[Str|Undef]

One or more prefix list IDs.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeManagedPrefixLists in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

