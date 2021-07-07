
package Paws::Macie2::DeclineInvitations;
  use Moose;
  has AccountIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'accountIds', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeclineInvitations');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/invitations/decline');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Macie2::DeclineInvitationsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::DeclineInvitations - Arguments for method DeclineInvitations on L<Paws::Macie2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeclineInvitations on the
L<Amazon Macie 2|Paws::Macie2> service. Use the attributes of this class
as arguments to method DeclineInvitations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeclineInvitations.

=head1 SYNOPSIS

    my $macie2 = Paws->service('Macie2');
    my $DeclineInvitationsResponse = $macie2->DeclineInvitations(
      AccountIds => [ 'My__string', ... ],

    );

    # Results:
    my $UnprocessedAccounts = $DeclineInvitationsResponse->UnprocessedAccounts;

    # Returns a L<Paws::Macie2::DeclineInvitationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/macie2/DeclineInvitations>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountIds => ArrayRef[Str|Undef]

An array that lists Amazon Web Services account IDs, one for each
account that sent an invitation to decline.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeclineInvitations in L<Paws::Macie2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

