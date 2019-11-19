# Generated from json/callresult_class.tt

package Paws::Config::StartRemediationExecutionResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Config::Types qw/Config_ResourceKey/;
  has FailedItems => (is => 'ro', isa => ArrayRef[Config_ResourceKey]);
  has FailureMessage => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'FailedItems' => {
                                  'class' => 'Paws::Config::ResourceKey',
                                  'type' => 'ArrayRef[Config_ResourceKey]'
                                },
               'FailureMessage' => {
                                     'type' => 'Str'
                                   }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Config::StartRemediationExecutionResponse

=head1 ATTRIBUTES


=head2 FailedItems => ArrayRef[Config_ResourceKey]

For resources that have failed to start execution, the API returns a
resource key object.


=head2 FailureMessage => Str

Returns a failure message. For example, the resource is already
compliant.


=head2 _request_id => Str


=cut

1;