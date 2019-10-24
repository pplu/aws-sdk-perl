# Generated from json/callresult_class.tt

package Paws::ECS::ListAccountSettingsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ECS::Types qw/ECS_Setting/;
  has NextToken => (is => 'ro', isa => Str);
  has Settings => (is => 'ro', isa => ArrayRef[ECS_Setting]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Settings' => {
                               'class' => 'Paws::ECS::Setting',
                               'type' => 'ArrayRef[ECS_Setting]'
                             },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'Settings' => 'settings'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ECS::ListAccountSettingsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The C<nextToken> value to include in a future C<ListAccountSettings>
request. When the results of a C<ListAccountSettings> request exceed
C<maxResults>, this value can be used to retrieve the next page of
results. This value is C<null> when there are no more results to
return.


=head2 Settings => ArrayRef[ECS_Setting]

The account settings for the resource.


=head2 _request_id => Str


=cut

1;