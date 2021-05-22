
package Paws::EC2::ModifyManagedPrefixList;
  use Moose;
  has AddEntries => (is => 'ro', isa => 'ArrayRef[Paws::EC2::AddPrefixListEntry]', traits => ['NameInRequest'], request_name => 'AddEntry' );
  has CurrentVersion => (is => 'ro', isa => 'Int');
  has DryRun => (is => 'ro', isa => 'Bool');
  has PrefixListId => (is => 'ro', isa => 'Str', required => 1);
  has PrefixListName => (is => 'ro', isa => 'Str');
  has RemoveEntries => (is => 'ro', isa => 'ArrayRef[Paws::EC2::RemovePrefixListEntry]', traits => ['NameInRequest'], request_name => 'RemoveEntry' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyManagedPrefixList');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::ModifyManagedPrefixListResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyManagedPrefixList - Arguments for method ModifyManagedPrefixList on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyManagedPrefixList on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method ModifyManagedPrefixList.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyManagedPrefixList.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $ModifyManagedPrefixListResult = $ec2->ModifyManagedPrefixList(
      PrefixListId => 'MyPrefixListResourceId',
      AddEntries   => [
        {
          Cidr        => 'MyString',
          Description => 'MyString',
        },
        ...
      ],    # OPTIONAL
      CurrentVersion => 1,             # OPTIONAL
      DryRun         => 1,             # OPTIONAL
      PrefixListName => 'MyString',    # OPTIONAL
      RemoveEntries  => [
        {
          Cidr => 'MyString',

        },
        ...
      ],                               # OPTIONAL
    );

    # Results:
    my $PrefixList = $ModifyManagedPrefixListResult->PrefixList;

    # Returns a L<Paws::EC2::ModifyManagedPrefixListResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/ModifyManagedPrefixList>

=head1 ATTRIBUTES


=head2 AddEntries => ArrayRef[L<Paws::EC2::AddPrefixListEntry>]

One or more entries to add to the prefix list.



=head2 CurrentVersion => Int

The current version of the prefix list.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 B<REQUIRED> PrefixListId => Str

The ID of the prefix list.



=head2 PrefixListName => Str

A name for the prefix list.



=head2 RemoveEntries => ArrayRef[L<Paws::EC2::RemovePrefixListEntry>]

One or more entries to remove from the prefix list.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyManagedPrefixList in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

