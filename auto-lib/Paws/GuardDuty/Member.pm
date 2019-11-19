# Generated from default/object.tt
package Paws::GuardDuty::Member;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::GuardDuty::Types qw//;
  has AccountId => (is => 'ro', isa => Str, required => 1);
  has DetectorId => (is => 'ro', isa => Str);
  has Email => (is => 'ro', isa => Str, required => 1);
  has InvitedAt => (is => 'ro', isa => Str);
  has MasterId => (is => 'ro', isa => Str, required => 1);
  has RelationshipStatus => (is => 'ro', isa => Str, required => 1);
  has UpdatedAt => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'MasterId' => 'masterId',
                       'InvitedAt' => 'invitedAt',
                       'DetectorId' => 'detectorId',
                       'Email' => 'email',
                       'RelationshipStatus' => 'relationshipStatus',
                       'AccountId' => 'accountId',
                       'UpdatedAt' => 'updatedAt'
                     },
  'IsRequired' => {
                    'MasterId' => 1,
                    'RelationshipStatus' => 1,
                    'Email' => 1,
                    'UpdatedAt' => 1,
                    'AccountId' => 1
                  },
  'types' => {
               'RelationshipStatus' => {
                                         'type' => 'Str'
                                       },
               'Email' => {
                            'type' => 'Str'
                          },
               'MasterId' => {
                               'type' => 'Str'
                             },
               'InvitedAt' => {
                                'type' => 'Str'
                              },
               'DetectorId' => {
                                 'type' => 'Str'
                               },
               'UpdatedAt' => {
                                'type' => 'Str'
                              },
               'AccountId' => {
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

Continas information about the member account

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

  Member account ID.


=head2 DetectorId => Str

  Member account's detector ID.


=head2 B<REQUIRED> Email => Str

  Member account's email address.


=head2 InvitedAt => Str

  Timestamp at which the invitation was sent


=head2 B<REQUIRED> MasterId => Str

  Master account ID.


=head2 B<REQUIRED> RelationshipStatus => Str

  The status of the relationship between the member and the master.


=head2 B<REQUIRED> UpdatedAt => Str

  Member last updated timestamp.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

