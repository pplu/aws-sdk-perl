# Generated from json/callresult_class.tt

package Paws::SMS::CreateAppResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SMS::Types qw/SMS_ServerGroup SMS_Tag SMS_AppSummary/;
  has AppSummary => (is => 'ro', isa => SMS_AppSummary);
  has ServerGroups => (is => 'ro', isa => ArrayRef[SMS_ServerGroup]);
  has Tags => (is => 'ro', isa => ArrayRef[SMS_Tag]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'AppSummary' => 'appSummary',
                       'ServerGroups' => 'serverGroups',
                       'Tags' => 'tags'
                     },
  'types' => {
               'Tags' => {
                           'class' => 'Paws::SMS::Tag',
                           'type' => 'ArrayRef[SMS_Tag]'
                         },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'AppSummary' => {
                                 'class' => 'Paws::SMS::AppSummary',
                                 'type' => 'SMS_AppSummary'
                               },
               'ServerGroups' => {
                                   'type' => 'ArrayRef[SMS_ServerGroup]',
                                   'class' => 'Paws::SMS::ServerGroup'
                                 }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SMS::CreateAppResponse

=head1 ATTRIBUTES


=head2 AppSummary => SMS_AppSummary

Summary description of the application.


=head2 ServerGroups => ArrayRef[SMS_ServerGroup]

List of server groups included in the application.


=head2 Tags => ArrayRef[SMS_Tag]

List of taags associated with the application.


=head2 _request_id => Str


=cut

1;