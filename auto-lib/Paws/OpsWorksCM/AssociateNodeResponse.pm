# Generated from json/callresult_class.tt

package Paws::OpsWorksCM::AssociateNodeResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::OpsWorksCM::Types qw//;
  has NodeAssociationStatusToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NodeAssociationStatusToken' => {
                                                 'type' => 'Str'
                                               }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::OpsWorksCM::AssociateNodeResponse

=head1 ATTRIBUTES


=head2 NodeAssociationStatusToken => Str

Contains a token which can be passed to the
C<DescribeNodeAssociationStatus> API call to get the status of the
association request.


=head2 _request_id => Str


=cut

1;