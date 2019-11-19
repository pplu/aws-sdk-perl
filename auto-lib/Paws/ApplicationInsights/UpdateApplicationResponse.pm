# Generated from json/callresult_class.tt

package Paws::ApplicationInsights::UpdateApplicationResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ApplicationInsights::Types qw/ApplicationInsights_ApplicationInfo/;
  has ApplicationInfo => (is => 'ro', isa => ApplicationInsights_ApplicationInfo);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ApplicationInfo' => {
                                      'type' => 'ApplicationInsights_ApplicationInfo',
                                      'class' => 'Paws::ApplicationInsights::ApplicationInfo'
                                    }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ApplicationInsights::UpdateApplicationResponse

=head1 ATTRIBUTES


=head2 ApplicationInfo => ApplicationInsights_ApplicationInfo

Information about the application.


=head2 _request_id => Str


=cut

1;