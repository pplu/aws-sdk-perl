
package Paws::IAM::GetAccountSummaryResponse;
  use Moo;
  use JSON::MaybeXS;
  use URL::Encode;
  use Types::Standard qw/Str/;
  use Paws::IAM::Types qw/IAM_summaryMapType/;
  has SummaryMap => (is => 'ro', isa => IAM_summaryMapType);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SummaryMap' => {
                                 'class' => 'Paws::IAM::SummaryMapType',
                                 'type' => 'IAM_summaryMapType'
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

Paws::IAM::GetAccountSummaryResponse

=head1 ATTRIBUTES


=head2 SummaryMap => IAM_summaryMapType

A set of keyE<ndash>value pairs containing information about IAM entity
usage and IAM quotas.


=head2 _request_id => Str


=cut

