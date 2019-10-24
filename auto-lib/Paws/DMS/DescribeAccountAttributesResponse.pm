# Generated from json/callresult_class.tt

package Paws::DMS::DescribeAccountAttributesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DMS::Types qw/DMS_AccountQuota/;
  has AccountQuotas => (is => 'ro', isa => ArrayRef[DMS_AccountQuota]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'AccountQuotas' => {
                                    'class' => 'Paws::DMS::AccountQuota',
                                    'type' => 'ArrayRef[DMS_AccountQuota]'
                                  }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DMS::DescribeAccountAttributesResponse

=head1 ATTRIBUTES


=head2 AccountQuotas => ArrayRef[DMS_AccountQuota]

Account quota information.


=head2 _request_id => Str


=cut

1;