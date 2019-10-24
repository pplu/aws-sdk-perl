# Generated from json/callresult_class.tt

package Paws::DMS::CreateEventSubscriptionResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DMS::Types qw/DMS_EventSubscription/;
  has EventSubscription => (is => 'ro', isa => DMS_EventSubscription);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'EventSubscription' => {
                                        'class' => 'Paws::DMS::EventSubscription',
                                        'type' => 'DMS_EventSubscription'
                                      }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DMS::CreateEventSubscriptionResponse

=head1 ATTRIBUTES


=head2 EventSubscription => DMS_EventSubscription

The event subscription that was created.


=head2 _request_id => Str


=cut

1;