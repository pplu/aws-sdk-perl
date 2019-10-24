# Generated from json/callresult_class.tt

package Paws::ApplicationInsights::ListApplicationsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ApplicationInsights::Types qw/ApplicationInsights_ApplicationInfo/;
  has ApplicationInfoList => (is => 'ro', isa => ArrayRef[ApplicationInsights_ApplicationInfo]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ApplicationInfoList' => {
                                          'class' => 'Paws::ApplicationInsights::ApplicationInfo',
                                          'type' => 'ArrayRef[ApplicationInsights_ApplicationInfo]'
                                        }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ApplicationInsights::ListApplicationsResponse

=head1 ATTRIBUTES


=head2 ApplicationInfoList => ArrayRef[ApplicationInsights_ApplicationInfo]

The list of applications.


=head2 NextToken => Str

The token used to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 _request_id => Str


=cut

1;