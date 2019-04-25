package Paws::GuardDuty::Member;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', request_name => 'accountId', traits => ['NameInRequest'], required => 1);
  has DetectorId => (is => 'ro', isa => 'Str', request_name => 'detectorId', traits => ['NameInRequest']);
  has Email => (is => 'ro', isa => 'Str', request_name => 'email', traits => ['NameInRequest'], required => 1);
  has InvitedAt => (is => 'ro', isa => 'Str', request_name => 'invitedAt', traits => ['NameInRequest']);
  has MasterId => (is => 'ro', isa => 'Str', request_name => 'masterId', traits => ['NameInRequest'], required => 1);
  has RelationshipStatus => (is => 'ro', isa => 'Str', request_name => 'relationshipStatus', traits => ['NameInRequest'], required => 1);
  has UpdatedAt => (is => 'ro', isa => 'Str', request_name => 'updatedAt', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::Member

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GuardDuty::Member object:

  $service_obj->Method(Att1 => { AccountId => $value, ..., UpdatedAt => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GuardDuty::Member object:

  $result = $service_obj->Method(...);
  $result->Att1->AccountId

=head1 DESCRIPTION

Contains details about the member account.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

  


=head2 DetectorId => Str

  


=head2 B<REQUIRED> Email => Str

  Member account's email address.


=head2 InvitedAt => Str

  Timestamp at which the invitation was sent


=head2 B<REQUIRED> MasterId => Str

  


=head2 B<REQUIRED> RelationshipStatus => Str

  The status of the relationship between the member and the master.


=head2 B<REQUIRED> UpdatedAt => Str

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

