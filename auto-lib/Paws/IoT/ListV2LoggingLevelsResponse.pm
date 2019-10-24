
package Paws::IoT::ListV2LoggingLevelsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::IoT::Types qw/IoT_LogTargetConfiguration/;
  has LogTargetConfigurations => (is => 'ro', isa => ArrayRef[IoT_LogTargetConfiguration]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'LogTargetConfigurations' => {
                                              'class' => 'Paws::IoT::LogTargetConfiguration',
                                              'type' => 'ArrayRef[IoT_LogTargetConfiguration]'
                                            },
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'LogTargetConfigurations' => 'logTargetConfigurations',
                       'NextToken' => 'nextToken'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListV2LoggingLevelsResponse

=head1 ATTRIBUTES


=head2 LogTargetConfigurations => ArrayRef[IoT_LogTargetConfiguration]

The logging configuration for a target.


=head2 NextToken => Str

The token used to get the next set of results, or B<null> if there are
no additional results.


=head2 _request_id => Str


=cut

