# Generated from json/callresult_class.tt

package Paws::Organizations::DescribeOrganizationResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Organizations::Types qw/Organizations_Organization/;
  has Organization => (is => 'ro', isa => Organizations_Organization);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Organization' => {
                                   'class' => 'Paws::Organizations::Organization',
                                   'type' => 'Organizations_Organization'
                                 }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Organizations::DescribeOrganizationResponse

=head1 ATTRIBUTES


=head2 Organization => Organizations_Organization

A structure that contains information about the organization.


=head2 _request_id => Str


=cut

1;