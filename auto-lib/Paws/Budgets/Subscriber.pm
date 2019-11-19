# Generated from default/object.tt
package Paws::Budgets::Subscriber;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Budgets::Types qw//;
  has Address => (is => 'ro', isa => Str, required => 1);
  has SubscriptionType => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'Address' => 1,
                    'SubscriptionType' => 1
                  },
  'types' => {
               'Address' => {
                              'type' => 'Str'
                            },
               'SubscriptionType' => {
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

Paws::Budgets::Subscriber

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Budgets::Subscriber object:

  $service_obj->Method(Att1 => { Address => $value, ..., SubscriptionType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Budgets::Subscriber object:

  $result = $service_obj->Method(...);
  $result->Att1->Address

=head1 DESCRIPTION

The subscriber to a budget notification. The subscriber consists of a
subscription type and either an Amazon SNS topic or an email address.

For example, an email subscriber would have the following parameters:

=over

=item *

A C<subscriptionType> of C<EMAIL>

=item *

An C<address> of C<example@example.com>

=back


=head1 ATTRIBUTES


=head2 B<REQUIRED> Address => Str

  The address that AWS sends budget notifications to, either an SNS topic
or an email.

When you create a subscriber, the value of C<Address> can't contain
line breaks.


=head2 B<REQUIRED> SubscriptionType => Str

  The type of notification that AWS sends to a subscriber.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Budgets>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

