# Generated from callresult_class.tt

package Paws::RDS::AccountAttributesMessage;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::RDS::Types qw/RDS_AccountQuota/;
  has AccountQuotas => (is => 'ro', isa => ArrayRef[RDS_AccountQuota]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'AccountQuotas' => 'AccountQuota'
                     },
  'types' => {
               'AccountQuotas' => {
                                    'type' => 'ArrayRef[RDS_AccountQuota]',
                                    'class' => 'Paws::RDS::AccountQuota'
                                  },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::AccountAttributesMessage

=head1 ATTRIBUTES


=head2 AccountQuotas => ArrayRef[RDS_AccountQuota]

A list of C<AccountQuota> objects. Within this list, each quota has a
name, a count of usage toward the quota maximum, and a maximum value
for the quota.


=head2 _request_id => Str


=cut

