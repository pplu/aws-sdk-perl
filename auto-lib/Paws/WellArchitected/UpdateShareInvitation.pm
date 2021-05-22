
package Paws::WellArchitected::UpdateShareInvitation;
  use Moose;
  has ShareInvitationAction => (is => 'ro', isa => 'Str', required => 1);
  has ShareInvitationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ShareInvitationId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateShareInvitation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/shareInvitations/{ShareInvitationId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WellArchitected::UpdateShareInvitationOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WellArchitected::UpdateShareInvitation - Arguments for method UpdateShareInvitation on L<Paws::WellArchitected>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateShareInvitation on the
L<AWS Well-Architected Tool|Paws::WellArchitected> service. Use the attributes of this class
as arguments to method UpdateShareInvitation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateShareInvitation.

=head1 SYNOPSIS

    my $wellarchitected = Paws->service('WellArchitected');
    my $UpdateShareInvitationOutput = $wellarchitected->UpdateShareInvitation(
      ShareInvitationAction => 'ACCEPT',
      ShareInvitationId     => 'MyShareInvitationId',

    );

    # Results:
    my $ShareInvitation = $UpdateShareInvitationOutput->ShareInvitation;

    # Returns a L<Paws::WellArchitected::UpdateShareInvitationOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wellarchitected/UpdateShareInvitation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ShareInvitationAction => Str



Valid values are: C<"ACCEPT">, C<"REJECT">

=head2 B<REQUIRED> ShareInvitationId => Str

The ID assigned to the share invitation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateShareInvitation in L<Paws::WellArchitected>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

