
package Paws::SecurityHub::DeleteInvitations;
  use Moose;
  has AccountIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteInvitations');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/invitations/delete');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecurityHub::DeleteInvitationsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::DeleteInvitations - Arguments for method DeleteInvitations on L<Paws::SecurityHub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteInvitations on the
L<AWS SecurityHub|Paws::SecurityHub> service. Use the attributes of this class
as arguments to method DeleteInvitations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteInvitations.

=head1 SYNOPSIS

    my $securityhub = Paws->service('SecurityHub');
    my $DeleteInvitationsResponse = $securityhub->DeleteInvitations(
      AccountIds => [ 'MyNonEmptyString', ... ],    # OPTIONAL
    );

    # Results:
    my $UnprocessedAccounts = $DeleteInvitationsResponse->UnprocessedAccounts;

    # Returns a L<Paws::SecurityHub::DeleteInvitationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/securityhub/DeleteInvitations>

=head1 ATTRIBUTES


=head2 AccountIds => ArrayRef[Str|Undef]

A list of account IDs specifying accounts whose invitations to Security
Hub you want to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteInvitations in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

