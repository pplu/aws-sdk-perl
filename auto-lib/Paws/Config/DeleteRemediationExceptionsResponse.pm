# Generated from json/callresult_class.tt

package Paws::Config::DeleteRemediationExceptionsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Config::Types qw/Config_FailedDeleteRemediationExceptionsBatch/;
  has FailedBatches => (is => 'ro', isa => ArrayRef[Config_FailedDeleteRemediationExceptionsBatch]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'FailedBatches' => {
                                    'type' => 'ArrayRef[Config_FailedDeleteRemediationExceptionsBatch]',
                                    'class' => 'Paws::Config::FailedDeleteRemediationExceptionsBatch'
                                  }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Config::DeleteRemediationExceptionsResponse

=head1 ATTRIBUTES


=head2 FailedBatches => ArrayRef[Config_FailedDeleteRemediationExceptionsBatch]

Returns a list of failed delete remediation exceptions batch objects.
Each object in the batch consists of a list of failed items and failure
messages.


=head2 _request_id => Str


=cut

1;