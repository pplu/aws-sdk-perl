# Generated from callresult_class.tt

package Paws::Neptune::CreateEventSubscriptionResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Neptune::Types qw/Neptune_EventSubscription/;
  has EventSubscription => (is => 'ro', isa => Neptune_EventSubscription);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'EventSubscription' => {
                                        'class' => 'Paws::Neptune::EventSubscription',
                                        'type' => 'Neptune_EventSubscription'
                                      }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptune::CreateEventSubscriptionResult

=head1 ATTRIBUTES


=head2 EventSubscription => Neptune_EventSubscription




=head2 _request_id => Str


=cut

