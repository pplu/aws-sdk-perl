package Paws::SES::IdentityNotificationAttributes;
  use Moose;
  has BounceTopic => (is => 'ro', isa => 'Str');
  has ComplaintTopic => (is => 'ro', isa => 'Str');
  has DeliveryTopic => (is => 'ro', isa => 'Str');
  has ForwardingEnabled => (is => 'ro', isa => 'Bool', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::IdentityNotificationAttributes

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SES::IdentityNotificationAttributes object:

  $service_obj->Method(Att1 => { BounceTopic => $value, ..., ForwardingEnabled => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SES::IdentityNotificationAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->BounceTopic

=head1 DESCRIPTION

Represents the notification attributes of an identity, including
whether an identity has Amazon Simple Notification Service (Amazon SNS)
topics set for bounce, complaint, and/or delivery notifications, and
whether feedback forwarding is enabled for bounce and complaint
notifications.

=head1 ATTRIBUTES

=head2 BounceTopic => Str

  The Amazon Resource Name (ARN) of the Amazon SNS topic where Amazon SES
will publish bounce notifications.

=head2 ComplaintTopic => Str

  The Amazon Resource Name (ARN) of the Amazon SNS topic where Amazon SES
will publish complaint notifications.

=head2 DeliveryTopic => Str

  The Amazon Resource Name (ARN) of the Amazon SNS topic where Amazon SES
will publish delivery notifications.

=head2 B<REQUIRED> ForwardingEnabled => Bool

  Describes whether Amazon SES will forward bounce and complaint
notifications as email. C<true> indicates that Amazon SES will forward
bounce and complaint notifications as email, while C<false> indicates
that bounce and complaint notifications will be published only to the
specified bounce and complaint Amazon SNS topics.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

