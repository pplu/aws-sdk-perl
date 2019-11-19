# Generated from json/callresult_class.tt

package Paws::Config::PutOrganizationConformancePackResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Config::Types qw//;
  has OrganizationConformancePackArn => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'OrganizationConformancePackArn' => {
                                                     'type' => 'Str'
                                                   }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Config::PutOrganizationConformancePackResponse

=head1 ATTRIBUTES


=head2 OrganizationConformancePackArn => Str

ARN of the organization conformance pack.


=head2 _request_id => Str


=cut

1;