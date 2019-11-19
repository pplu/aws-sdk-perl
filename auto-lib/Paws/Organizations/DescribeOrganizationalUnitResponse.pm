# Generated from json/callresult_class.tt

package Paws::Organizations::DescribeOrganizationalUnitResponse;
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

Paws::Organizations::DescribeOrganizationalUnitResponse

=head1 ATTRIBUTES


=head2 OrganizationalUnit => Organizations_OrganizationalUnit

A structure that contains details about the specified OU.


=head2 _request_id => Str


=cut

1;