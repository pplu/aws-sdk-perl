
package Paws::GuardDuty::InviteMembers;
  use Moose;
  has AccountIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'accountIds');
  has DetectorId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'detectorId', required => 1);
  has DisableEmailNotification => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'disableEmailNotification');
  has Message => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'message');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'InviteMembers');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/detector/{detectorId}/member/invite');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GuardDuty::InviteMembersResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::InviteMembers - Arguments for method InviteMembers on L<Paws::GuardDuty>

=head1 DESCRIPTION

This class represents the parameters used for calling the method InviteMembers on the 
L<Amazon GuardDuty|Paws::GuardDuty> service. Use the attributes of this class
as arguments to method InviteMembers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to InviteMembers.

As an example:

  $service_obj->InviteMembers(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 AccountIds => ArrayRef[Str|Undef]

A list of account IDs of the accounts that you want to invite to
GuardDuty as members.



=head2 B<REQUIRED> DetectorId => Str

The unique ID of the detector of the GuardDuty account with which you
want to invite members.



=head2 DisableEmailNotification => Bool





=head2 Message => Str

The invitation message that you want to send to the accounts that
youE<rsquo>re inviting to GuardDuty as members.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method InviteMembers in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

