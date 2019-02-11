
package Paws::SecurityHub::InviteMembers;
  use Moose;
  has AccountIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'InviteMembers');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/members/invite');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecurityHub::InviteMembersResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::InviteMembers - Arguments for method InviteMembers on L<Paws::SecurityHub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method InviteMembers on the
L<AWS SecurityHub|Paws::SecurityHub> service. Use the attributes of this class
as arguments to method InviteMembers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to InviteMembers.

=head1 SYNOPSIS

    my $securityhub = Paws->service('SecurityHub');
    my $InviteMembersResponse = $securityhub->InviteMembers(
      AccountIds => [ 'MyNonEmptyString', ... ],    # OPTIONAL
    );

    # Results:
    my $UnprocessedAccounts = $InviteMembersResponse->UnprocessedAccounts;

    # Returns a L<Paws::SecurityHub::InviteMembersResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/securityhub/InviteMembers>

=head1 ATTRIBUTES


=head2 AccountIds => ArrayRef[Str|Undef]

A list of IDs of the AWS accounts that you want to invite to Security
Hub as members.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method InviteMembers in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

