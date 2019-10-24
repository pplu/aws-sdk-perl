# Generated from json/callresult_class.tt

package Paws::SMS::ListAppsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SMS::Types qw/SMS_AppSummary/;
  has Apps => (is => 'ro', isa => ArrayRef[SMS_AppSummary]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Apps' => {
                           'class' => 'Paws::SMS::AppSummary',
                           'type' => 'ArrayRef[SMS_AppSummary]'
                         },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'Apps' => 'apps'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SMS::ListAppsResponse

=head1 ATTRIBUTES


=head2 Apps => ArrayRef[SMS_AppSummary]

A list of application summaries.


=head2 NextToken => Str

The token required to retrieve the next set of results. This value is
null when there are no more results to return.


=head2 _request_id => Str


=cut

1;