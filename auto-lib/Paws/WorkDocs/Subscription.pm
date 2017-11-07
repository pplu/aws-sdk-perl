package Paws::WorkDocs::Subscription;
  use Moose;
  has EndPoint => (is => 'ro', isa => 'Str');
  has Protocol => (is => 'ro', isa => 'Str');
  has SubscriptionId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkDocs::Subscription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WorkDocs::Subscription object:

  $service_obj->Method(Att1 => { EndPoint => $value, ..., SubscriptionId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WorkDocs::Subscription object:

  $result = $service_obj->Method(...);
  $result->Att1->EndPoint

=head1 DESCRIPTION

Describes a subscription.

=head1 ATTRIBUTES


=head2 EndPoint => Str

  The endpoint of the subscription.


=head2 Protocol => Str

  The protocol of the subscription.


=head2 SubscriptionId => Str

  The ID of the subscription.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WorkDocs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

