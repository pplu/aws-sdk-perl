
package Paws::SecurityHub::GetInvitationsCount;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetInvitationsCount');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/invitations/count');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecurityHub::GetInvitationsCountResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::GetInvitationsCount - Arguments for method GetInvitationsCount on L<Paws::SecurityHub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetInvitationsCount on the
L<AWS SecurityHub|Paws::SecurityHub> service. Use the attributes of this class
as arguments to method GetInvitationsCount.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetInvitationsCount.

=head1 SYNOPSIS

    my $securityhub = Paws->service('SecurityHub');
    my $GetInvitationsCountResponse = $securityhub->GetInvitationsCount();

    # Results:
    my $InvitationsCount = $GetInvitationsCountResponse->InvitationsCount;

    # Returns a L<Paws::SecurityHub::GetInvitationsCountResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/securityhub/GetInvitationsCount>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetInvitationsCount in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

