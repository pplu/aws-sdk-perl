# Generated from json/callresult_class.tt

package Paws::CognitoIdentity::IdentityDescription;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::CognitoIdentity::Types qw//;
  has CreationDate => (is => 'ro', isa => Str);
  has IdentityId => (is => 'ro', isa => Str);
  has LastModifiedDate => (is => 'ro', isa => Str);
  has Logins => (is => 'ro', isa => ArrayRef[Str|Undef]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Logins' => {
                             'type' => 'ArrayRef[Str|Undef]'
                           },
               'LastModifiedDate' => {
                                       'type' => 'Str'
                                     },
               'CreationDate' => {
                                   'type' => 'Str'
                                 },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'IdentityId' => {
                                 'type' => 'Str'
                               }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdentity::IdentityDescription

=head1 ATTRIBUTES


=head2 CreationDate => Str

Date on which the identity was created.


=head2 IdentityId => Str

A unique identifier in the format REGION:GUID.


=head2 LastModifiedDate => Str

Date on which the identity was last modified.


=head2 Logins => ArrayRef[Str|Undef]

The provider names.


=head2 _request_id => Str


=cut

1;