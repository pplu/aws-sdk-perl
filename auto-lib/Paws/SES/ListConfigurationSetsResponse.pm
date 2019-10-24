# Generated from callresult_class.tt

package Paws::SES::ListConfigurationSetsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SES::Types qw/SES_ConfigurationSet/;
  has ConfigurationSets => (is => 'ro', isa => ArrayRef[SES_ConfigurationSet]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'ConfigurationSets' => {
                                        'class' => 'Paws::SES::ConfigurationSet',
                                        'type' => 'ArrayRef[SES_ConfigurationSet]'
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

Paws::SES::ListConfigurationSetsResponse

=head1 ATTRIBUTES


=head2 ConfigurationSets => ArrayRef[SES_ConfigurationSet]

A list of configuration sets.


=head2 NextToken => Str

A token indicating that there are additional configuration sets
available to be listed. Pass this token to successive calls of
C<ListConfigurationSets>.


=head2 _request_id => Str


=cut

