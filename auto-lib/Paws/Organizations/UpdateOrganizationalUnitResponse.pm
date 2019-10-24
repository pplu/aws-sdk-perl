# Generated from json/callresult_class.tt

package Paws::Organizations::UpdateOrganizationalUnitResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Organizations::Types qw/Organizations_OrganizationalUnit/;
  has OrganizationalUnit => (is => 'ro', isa => Organizations_OrganizationalUnit);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'OrganizationalUnit' => {
                                         'class' => 'Paws::Organizations::OrganizationalUnit',
                                         'type' => 'Organizations_OrganizationalUnit'
                                       }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Organizations::UpdateOrganizationalUnitResponse

=head1 ATTRIBUTES


=head2 OrganizationalUnit => Organizations_OrganizationalUnit

A structure that contains the details about the specified OU, including
its new name.


=head2 _request_id => Str


=cut

1;