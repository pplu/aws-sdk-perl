# Generated from json/callresult_class.tt

package Paws::AlexaForBusiness::GetInvitationConfigurationResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::AlexaForBusiness::Types qw//;
  has ContactEmail => (is => 'ro', isa => Str);
  has OrganizationName => (is => 'ro', isa => Str);
  has PrivateSkillIds => (is => 'ro', isa => ArrayRef[Str|Undef]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'PrivateSkillIds' => {
                                      'type' => 'ArrayRef[Str|Undef]'
                                    },
               'OrganizationName' => {
                                       'type' => 'Str'
                                     },
               'ContactEmail' => {
                                   'type' => 'Str'
                                 }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::GetInvitationConfigurationResponse

=head1 ATTRIBUTES


=head2 ContactEmail => Str

The email ID of the organization or individual contact that the
enrolled user can use.


=head2 OrganizationName => Str

The name of the organization sending the enrollment invite to a user.


=head2 PrivateSkillIds => ArrayRef[Str|Undef]

The list of private skill IDs that you want to recommend to the user to
enable in the invitation.


=head2 _request_id => Str


=cut

1;