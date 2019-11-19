# Generated from callresult_class.tt

package Paws::RDS::CreateEventSubscriptionResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::RDS::Types qw/RDS_EventSubscription/;
  has EventSubscription => (is => 'ro', isa => RDS_EventSubscription);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'EventSubscription' => {
                                        'type' => 'RDS_EventSubscription',
                                        'class' => 'Paws::RDS::EventSubscription'
                                      }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::CreateEventSubscriptionResult

=head1 ATTRIBUTES


=head2 EventSubscription => RDS_EventSubscription




=head2 _request_id => Str


=cut

