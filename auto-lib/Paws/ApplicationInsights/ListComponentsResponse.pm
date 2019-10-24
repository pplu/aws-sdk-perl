# Generated from json/callresult_class.tt

package Paws::ApplicationInsights::ListComponentsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ApplicationInsights::Types qw/ApplicationInsights_ApplicationComponent/;
  has ApplicationComponentList => (is => 'ro', isa => ArrayRef[ApplicationInsights_ApplicationComponent]);
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
               'ApplicationComponentList' => {
                                               'class' => 'Paws::ApplicationInsights::ApplicationComponent',
                                               'type' => 'ArrayRef[ApplicationInsights_ApplicationComponent]'
                                             }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ApplicationInsights::ListComponentsResponse

=head1 ATTRIBUTES


=head2 ApplicationComponentList => ArrayRef[ApplicationInsights_ApplicationComponent]

The list of application components.


=head2 NextToken => Str

The token to request the next page of results.


=head2 _request_id => Str


=cut

1;