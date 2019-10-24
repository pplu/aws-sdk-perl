# Generated from json/callresult_class.tt

package Paws::SMS::UpdateAppResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SMS::Types qw/SMS_Tag SMS_AppSummary SMS_ServerGroup/;
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
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'AppSummary' => {
                                 'class' => 'Paws::SMS::AppSummary',
                                 'type' => 'SMS_AppSummary'
                               },
               'Tags' => {
                           'class' => 'Paws::SMS::Tag',
                           'type' => 'ArrayRef[SMS_Tag]'
                         }
             },
  'NameInRequest' => {
                       'ServerGroups' => 'serverGroups',
                       'AppSummary' => 'appSummary',
                       'Tags' => 'tags'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SMS::UpdateAppResponse

=head1 ATTRIBUTES


=head2 AppSummary => SMS_AppSummary

Summary description of the application.


=head2 ServerGroups => ArrayRef[SMS_ServerGroup]

List of updated server groups in the application.


=head2 Tags => ArrayRef[SMS_Tag]

List of tags associated with the application.


=head2 _request_id => Str


=cut

1;