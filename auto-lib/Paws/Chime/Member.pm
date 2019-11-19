# Generated from default/object.tt
package Paws::Chime::Member;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Chime::Types qw//;
  has AccountId => (is => 'ro', isa => Str);
  has Email => (is => 'ro', isa => Str);
  has FullName => (is => 'ro', isa => Str);
  has MemberId => (is => 'ro', isa => Str);
  has MemberType => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'AccountId' => {
                                'type' => 'Str'
                              },
               'Email' => {
                            'type' => 'Str'
                          },
               'MemberType' => {
                                 'type' => 'Str'
                               },
               'FullName' => {
                               'type' => 'Str'
                             },
               'MemberId' => {
                               'type' => 'Str'
                             }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::Member

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Chime::Member object:

  $service_obj->Method(Att1 => { AccountId => $value, ..., MemberType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Chime::Member object:

  $result = $service_obj->Method(...);
  $result->Att1->AccountId

=head1 DESCRIPTION

The member details, such as email address, name, member ID, and member
type.

=head1 ATTRIBUTES


=head2 AccountId => Str

  The Amazon Chime account ID.


=head2 Email => Str

  The member email address.


=head2 FullName => Str

  The member name.


=head2 MemberId => Str

  The member ID (user ID or bot ID).


=head2 MemberType => Str

  The member type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

