# Generated from json/callresult_class.tt

package Paws::Config::PutRemediationConfigurationsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Config::Types qw/Config_FailedRemediationBatch/;
  has FailedBatches => (is => 'ro', isa => ArrayRef[Config_FailedRemediationBatch]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'FailedBatches' => {
                                    'class' => 'Paws::Config::FailedRemediationBatch',
                                    'type' => 'ArrayRef[Config_FailedRemediationBatch]'
                                  }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Config::PutRemediationConfigurationsResponse

=head1 ATTRIBUTES


=head2 FailedBatches => ArrayRef[Config_FailedRemediationBatch]

Returns a list of failed remediation batch objects.


=head2 _request_id => Str


=cut

1;