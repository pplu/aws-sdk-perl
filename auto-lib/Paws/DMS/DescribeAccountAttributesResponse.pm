# Generated from json/callresult_class.tt

package Paws::DMS::DescribeAccountAttributesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DMS::Types qw/DMS_AccountQuota/;
  has AccountQuotas => (is => 'ro', isa => ArrayRef[DMS_AccountQuota]);
  has UniqueAccountIdentifier => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'UniqueAccountIdentifier' => {
                                              'type' => 'Str'
                                            },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'AccountQuotas' => {
                                    'type' => 'ArrayRef[DMS_AccountQuota]',
                                    'class' => 'Paws::DMS::AccountQuota'
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


=head2 UniqueAccountIdentifier => Str

A unique AWS DMS identifier for an account in a particular AWS Region.
The value of this identifier has the following format: C<c99999999999>.
DMS uses this identifier to name artifacts. For example, DMS uses this
identifier to name the default Amazon S3 bucket for storing task
assessment reports in a given AWS Region. The format of this S3 bucket
name is the following:
C<dms-I<AccountNumber>-I<UniqueAccountIdentifier>.> Here is an example
name for this default S3 bucket: C<dms-111122223333-c44445555666>.

AWS DMS supports the C<UniqueAccountIdentifier> parameter in versions
3.1.4 and later.


=head2 _request_id => Str


=cut

1;