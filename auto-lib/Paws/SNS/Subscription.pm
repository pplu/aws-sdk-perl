package Paws::SNS::Subscription;
  use Moose;
  has Endpoint => (is => 'ro', isa => 'Str');
  has Owner => (is => 'ro', isa => 'Str');
  has Protocol => (is => 'ro', isa => 'Str');
  has SubscriptionArn => (is => 'ro', isa => 'Str');
  has TopicArn => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SNS::Subscription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SNS::Subscription object:

  $service_obj->Method(Att1 => { Endpoint => $value, ..., TopicArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SNS::Subscription object:

  $result = $service_obj->Method(...);
  $result->Att1->Endpoint

=head1 DESCRIPTION

A wrapper type for the attributes of an Amazon SNS subscription.

=head1 ATTRIBUTES


=head2 Endpoint => Str

  The subscription's endpoint (format depends on the protocol).


=head2 Owner => Str

  The subscription's owner.


=head2 Protocol => Str

  The subscription's protocol.


=head2 SubscriptionArn => Str

  The subscription's ARN.


=head2 TopicArn => Str

  The ARN of the subscription's topic.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SNS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

