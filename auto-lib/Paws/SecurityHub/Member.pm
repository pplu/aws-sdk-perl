package Paws::SecurityHub::Member;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str');
  has Email => (is => 'ro', isa => 'Str');
  has InvitedAt => (is => 'ro', isa => 'Str');
  has MasterId => (is => 'ro', isa => 'Str');
  has MemberStatus => (is => 'ro', isa => 'Str');
  has UpdatedAt => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::Member

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::Member object:

  $service_obj->Method(Att1 => { AccountId => $value, ..., UpdatedAt => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::Member object:

  $result = $service_obj->Method(...);
  $result->Att1->AccountId

=head1 DESCRIPTION

The details for a Security Hub member account.

=head1 ATTRIBUTES


=head2 AccountId => Str

  The AWS account ID of a Security Hub member account.


=head2 Email => Str

  The email of a Security Hub member account.


=head2 InvitedAt => Str

  Time stamp at which the member account was invited to Security Hub.


=head2 MasterId => Str

  The AWS account ID of the master Security Hub account to this member
account.


=head2 MemberStatus => Str

  The status of the relationship between the member account and its
master account.


=head2 UpdatedAt => Str

  Time stamp at which this member account was updated.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

