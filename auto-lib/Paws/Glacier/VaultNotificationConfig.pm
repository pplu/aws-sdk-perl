package Paws::Glacier::VaultNotificationConfig;
  use Moose;
  has Events => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has SNSTopic => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glacier::VaultNotificationConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glacier::VaultNotificationConfig object:

  $service_obj->Method(Att1 => { Events => $value, ..., SNSTopic => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glacier::VaultNotificationConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->Events

=head1 DESCRIPTION

Represents a vault's notification configuration.

=head1 ATTRIBUTES


=head2 Events => ArrayRef[Str|Undef]

  A list of one or more events for which Amazon Glacier will send a
notification to the specified Amazon SNS topic.


=head2 SNSTopic => Str

  The Amazon Simple Notification Service (Amazon SNS) topic Amazon
Resource Name (ARN).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glacier>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

