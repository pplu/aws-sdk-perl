
package Paws::SecurityHub::CreateMembers;
  use Moose;
  has AccountDetails => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::AccountDetails]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateMembers');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/members');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecurityHub::CreateMembersResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::CreateMembers - Arguments for method CreateMembers on L<Paws::SecurityHub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateMembers on the
L<AWS SecurityHub|Paws::SecurityHub> service. Use the attributes of this class
as arguments to method CreateMembers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateMembers.

=head1 SYNOPSIS

    my $securityhub = Paws->service('SecurityHub');
    my $CreateMembersResponse = $securityhub->CreateMembers(
      AccountDetails => [
        {
          AccountId => 'MyAccountId',         # OPTIONAL
          Email     => 'MyNonEmptyString',    # OPTIONAL
        },
        ...
      ],                                      # OPTIONAL
    );

    # Results:
    my $UnprocessedAccounts = $CreateMembersResponse->UnprocessedAccounts;

    # Returns a L<Paws::SecurityHub::CreateMembersResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/securityhub/CreateMembers>

=head1 ATTRIBUTES


=head2 AccountDetails => ArrayRef[L<Paws::SecurityHub::AccountDetails>]

A list of account ID and email address pairs of the accounts that you
want to associate with the master Security Hub account.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateMembers in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

