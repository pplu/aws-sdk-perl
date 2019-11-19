# Generated from callresult_class.tt

package Paws::RedShift::CreateEventSubscriptionResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::RedShift::Types qw/RedShift_EventSubscription/;
  has EventSubscription => (is => 'ro', isa => RedShift_EventSubscription);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'EventSubscription' => {
                                        'type' => 'RedShift_EventSubscription',
                                        'class' => 'Paws::RedShift::EventSubscription'
                                      },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::CreateEventSubscriptionResult

=head1 ATTRIBUTES


=head2 EventSubscription => RedShift_EventSubscription




=head2 _request_id => Str


=cut

