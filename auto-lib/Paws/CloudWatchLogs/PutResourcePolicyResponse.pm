# Generated from json/callresult_class.tt

package Paws::CloudWatchLogs::PutResourcePolicyResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudWatchLogs::Types qw/CloudWatchLogs_ResourcePolicy/;
  has ResourcePolicy => (is => 'ro', isa => CloudWatchLogs_ResourcePolicy);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'ResourcePolicy' => 'resourcePolicy'
                     },
  'types' => {
               'ResourcePolicy' => {
                                     'type' => 'CloudWatchLogs_ResourcePolicy',
                                     'class' => 'Paws::CloudWatchLogs::ResourcePolicy'
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

Paws::CloudWatchLogs::PutResourcePolicyResponse

=head1 ATTRIBUTES


=head2 ResourcePolicy => CloudWatchLogs_ResourcePolicy

The new policy.


=head2 _request_id => Str


=cut

1;