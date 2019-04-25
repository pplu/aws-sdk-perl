package Paws::WorkMail::Member;
  use Moose;
  has DisabledDate => (is => 'ro', isa => 'Str');
  has EnabledDate => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::Member

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WorkMail::Member object:

  $service_obj->Method(Att1 => { DisabledDate => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WorkMail::Member object:

  $result = $service_obj->Method(...);
  $result->Att1->DisabledDate

=head1 DESCRIPTION

The representation of a group member (user or group).

=head1 ATTRIBUTES


=head2 DisabledDate => Str

  The date indicating when the member was disabled from Amazon WorkMail
use.


=head2 EnabledDate => Str

  The date indicating when the member was enabled for Amazon WorkMail
use.


=head2 Id => Str

  The identifier of the member.


=head2 Name => Str

  The name of the member.


=head2 State => Str

  The state of the member, which can be ENABLED, DISABLED, or DELETED.


=head2 Type => Str

  A member can be a user or group.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WorkMail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

