# Generated from json/callresult_class.tt

package Paws::WAFRegional::ListLoggingConfigurationsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::WAFRegional::Types qw/WAFRegional_LoggingConfiguration/;
  has LoggingConfigurations => (is => 'ro', isa => ArrayRef[WAFRegional_LoggingConfiguration]);
  has NextMarker => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextMarker' => {
                                 'type' => 'Str'
                               },
               'LoggingConfigurations' => {
                                            'class' => 'Paws::WAFRegional::LoggingConfiguration',
                                            'type' => 'ArrayRef[WAFRegional_LoggingConfiguration]'
                                          }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::WAFRegional::ListLoggingConfigurationsResponse

=head1 ATTRIBUTES


=head2 LoggingConfigurations => ArrayRef[WAFRegional_LoggingConfiguration]

An array of LoggingConfiguration objects.


=head2 NextMarker => Str

If you have more C<LoggingConfigurations> than the number that you
specified for C<Limit> in the request, the response includes a
C<NextMarker> value. To list more C<LoggingConfigurations>, submit
another C<ListLoggingConfigurations> request, and specify the
C<NextMarker> value from the response in the C<NextMarker> value in the
next request.


=head2 _request_id => Str


=cut

1;