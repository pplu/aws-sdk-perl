
package Paws::EC2::GetManagedPrefixListEntries;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has PrefixListId => (is => 'ro', isa => 'Str', required => 1);
  has TargetVersion => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetManagedPrefixListEntries');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::GetManagedPrefixListEntriesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::GetManagedPrefixListEntries - Arguments for method GetManagedPrefixListEntries on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetManagedPrefixListEntries on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method GetManagedPrefixListEntries.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetManagedPrefixListEntries.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $GetManagedPrefixListEntriesResult = $ec2->GetManagedPrefixListEntries(
      PrefixListId  => 'MyPrefixListResourceId',
      DryRun        => 1,                          # OPTIONAL
      MaxResults    => 1,                          # OPTIONAL
      NextToken     => 'MyNextToken',              # OPTIONAL
      TargetVersion => 1,                          # OPTIONAL
    );

    # Results:
    my $Entries   = $GetManagedPrefixListEntriesResult->Entries;
    my $NextToken = $GetManagedPrefixListEntriesResult->NextToken;

    # Returns a L<Paws::EC2::GetManagedPrefixListEntriesResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/GetManagedPrefixListEntries>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 MaxResults => Int

The maximum number of results to return with a single call. To retrieve
the remaining results, make another call with the returned C<nextToken>
value.



=head2 NextToken => Str

The token for the next page of results.



=head2 B<REQUIRED> PrefixListId => Str

The ID of the prefix list.



=head2 TargetVersion => Int

The version of the prefix list for which to return the entries. The
default is the current version.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetManagedPrefixListEntries in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

