
package Paws::SecurityHub::AcceptInvitation;
  use Moose;
  has InvitationId => (is => 'ro', isa => 'Str');
  has MasterId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AcceptInvitation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/master');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecurityHub::AcceptInvitationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::AcceptInvitation - Arguments for method AcceptInvitation on L<Paws::SecurityHub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AcceptInvitation on the
L<AWS SecurityHub|Paws::SecurityHub> service. Use the attributes of this class
as arguments to method AcceptInvitation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AcceptInvitation.

=head1 SYNOPSIS

    my $securityhub = Paws->service('SecurityHub');
    my $AcceptInvitationResponse = $securityhub->AcceptInvitation(
      InvitationId => 'MyNonEmptyString',    # OPTIONAL
      MasterId     => 'MyNonEmptyString',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/securityhub/AcceptInvitation>

=head1 ATTRIBUTES


=head2 InvitationId => Str

The ID of the invitation that is sent to the AWS account by the
Security Hub master account.



=head2 MasterId => Str

The account ID of the master Security Hub account whose invitation
you're accepting.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AcceptInvitation in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

