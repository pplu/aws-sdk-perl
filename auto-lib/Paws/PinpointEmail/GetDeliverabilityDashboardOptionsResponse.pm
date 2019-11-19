
package Paws::PinpointEmail::GetDeliverabilityDashboardOptionsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Bool/;
  use Paws::PinpointEmail::Types qw/PinpointEmail_DomainDeliverabilityTrackingOption/;
  has AccountStatus => (is => 'ro', isa => Str);
  has ActiveSubscribedDomains => (is => 'ro', isa => ArrayRef[PinpointEmail_DomainDeliverabilityTrackingOption]);
  has DashboardEnabled => (is => 'ro', isa => Bool, required => 1);
  has PendingExpirationSubscribedDomains => (is => 'ro', isa => ArrayRef[PinpointEmail_DomainDeliverabilityTrackingOption]);
  has SubscriptionExpiryDate => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'DashboardEnabled' => 1
                  },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DashboardEnabled' => {
                                       'type' => 'Bool'
                                     },
               'SubscriptionExpiryDate' => {
                                             'type' => 'Str'
                                           },
               'AccountStatus' => {
                                    'type' => 'Str'
                                  },
               'ActiveSubscribedDomains' => {
                                              'class' => 'Paws::PinpointEmail::DomainDeliverabilityTrackingOption',
                                              'type' => 'ArrayRef[PinpointEmail_DomainDeliverabilityTrackingOption]'
                                            },
               'PendingExpirationSubscribedDomains' => {
                                                         'class' => 'Paws::PinpointEmail::DomainDeliverabilityTrackingOption',
                                                         'type' => 'ArrayRef[PinpointEmail_DomainDeliverabilityTrackingOption]'
                                                       }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointEmail::GetDeliverabilityDashboardOptionsResponse

=head1 ATTRIBUTES


=head2 AccountStatus => Str

The current status of your Deliverability dashboard subscription. If
this value is C<PENDING_EXPIRATION>, your subscription is scheduled to
expire at the end of the current calendar month.

Valid values are: C<"ACTIVE">, C<"PENDING_EXPIRATION">, C<"DISABLED">
=head2 ActiveSubscribedDomains => ArrayRef[PinpointEmail_DomainDeliverabilityTrackingOption]

An array of objects, one for each verified domain that you use to send
email and currently has an active Deliverability dashboard subscription
that isnE<rsquo>t scheduled to expire at the end of the current
calendar month.


=head2 B<REQUIRED> DashboardEnabled => Bool

Specifies whether the Deliverability dashboard is enabled for your
Amazon Pinpoint account. If this value is C<true>, the dashboard is
enabled.


=head2 PendingExpirationSubscribedDomains => ArrayRef[PinpointEmail_DomainDeliverabilityTrackingOption]

An array of objects, one for each verified domain that you use to send
email and currently has an active Deliverability dashboard subscription
that's scheduled to expire at the end of the current calendar month.


=head2 SubscriptionExpiryDate => Str

The date, in Unix time format, when your current subscription to the
Deliverability dashboard is scheduled to expire, if your subscription
is scheduled to expire at the end of the current calendar month. This
value is null if you have an active subscription that isnE<rsquo>t due
to expire at the end of the month.


=head2 _request_id => Str


=cut

