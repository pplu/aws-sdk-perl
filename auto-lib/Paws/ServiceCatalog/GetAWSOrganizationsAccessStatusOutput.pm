# Generated from json/callresult_class.tt

package Paws::ServiceCatalog::GetAWSOrganizationsAccessStatusOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ServiceCatalog::Types qw//;
  has AccessStatus => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'AccessStatus' => {
                                   'type' => 'Str'
                                 },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::GetAWSOrganizationsAccessStatusOutput

=head1 ATTRIBUTES


=head2 AccessStatus => Str

The status of the portfolio share feature.

Valid values are: C<"ENABLED">, C<"UNDER_CHANGE">, C<"DISABLED">
=head2 _request_id => Str


=cut

1;