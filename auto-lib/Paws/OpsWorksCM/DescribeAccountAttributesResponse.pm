# Generated from json/callresult_class.tt

package Paws::OpsWorksCM::DescribeAccountAttributesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::OpsWorksCM::Types qw/OpsWorksCM_AccountAttribute/;
  has Attributes => (is => 'ro', isa => ArrayRef[OpsWorksCM_AccountAttribute]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Attributes' => {
                                 'class' => 'Paws::OpsWorksCM::AccountAttribute',
                                 'type' => 'ArrayRef[OpsWorksCM_AccountAttribute]'
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

Paws::OpsWorksCM::DescribeAccountAttributesResponse

=head1 ATTRIBUTES


=head2 Attributes => ArrayRef[OpsWorksCM_AccountAttribute]

The attributes that are currently set for the account.


=head2 _request_id => Str


=cut

1;