# Generated from json/callresult_class.tt

package Paws::SMS::GetAppResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SMS::Types qw/SMS_Tag SMS_ServerGroup SMS_AppSummary/;
  has AppSummary => (is => 'ro', isa => SMS_AppSummary);
  has ServerGroups => (is => 'ro', isa => ArrayRef[SMS_ServerGroup]);
  has Tags => (is => 'ro', isa => ArrayRef[SMS_Tag]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ServerGroups' => {
                                   'class' => 'Paws::SMS::ServerGroup',
                                   'type' => 'ArrayRef[SMS_ServerGroup]'
                                 },
               'AppSummary' => {
                                 'class' => 'Paws::SMS::AppSummary',
                                 'type' => 'SMS_AppSummary'
                               },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Tags' => {
                           'class' => 'Paws::SMS::Tag',
                           'type' => 'ArrayRef[SMS_Tag]'
                         }
             },
  'NameInRequest' => {
                       'Tags' => 'tags',
                       'ServerGroups' => 'serverGroups',
                       'AppSummary' => 'appSummary'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SMS::GetAppResponse

=head1 ATTRIBUTES


=head2 AppSummary => SMS_AppSummary

Information about the application.


=head2 ServerGroups => ArrayRef[SMS_ServerGroup]

List of server groups belonging to the application.


=head2 Tags => ArrayRef[SMS_Tag]

List of tags associated with the application.


=head2 _request_id => Str


=cut

1;