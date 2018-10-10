
package Paws::GuardDuty::AcceptInvitation;
  use Moose;
  has DetectorId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'detectorId', required => 1);
  has InvitationId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'invitationId', required => 1);
  has MasterId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'masterId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AcceptInvitation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/detector/{detectorId}/master');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GuardDuty::AcceptInvitationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::AcceptInvitation - Arguments for method AcceptInvitation on L<Paws::GuardDuty>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AcceptInvitation on the
L<Amazon GuardDuty|Paws::GuardDuty> service. Use the attributes of this class
as arguments to method AcceptInvitation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AcceptInvitation.

=head1 SYNOPSIS

    my $guardduty = Paws->service('GuardDuty');
    my $AcceptInvitationResponse = $guardduty->AcceptInvitation(
      DetectorId   => 'My__string',
      InvitationId => 'MyInvitationId',
      MasterId     => 'MyMasterId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/guardduty/AcceptInvitation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DetectorId => Str

The unique ID of the detector of the GuardDuty member account.



=head2 B<REQUIRED> InvitationId => Str

This value is used to validate the master account to the member
account.



=head2 B<REQUIRED> MasterId => Str

The account ID of the master GuardDuty account whose invitation you're
accepting.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AcceptInvitation in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

