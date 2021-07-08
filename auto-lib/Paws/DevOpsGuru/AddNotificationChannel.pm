
package Paws::DevOpsGuru::AddNotificationChannel;
  use Moose;
  has Config => (is => 'ro', isa => 'Paws::DevOpsGuru::NotificationChannelConfig', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AddNotificationChannel');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/channels');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DevOpsGuru::AddNotificationChannelResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DevOpsGuru::AddNotificationChannel - Arguments for method AddNotificationChannel on L<Paws::DevOpsGuru>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AddNotificationChannel on the
L<Amazon DevOps Guru|Paws::DevOpsGuru> service. Use the attributes of this class
as arguments to method AddNotificationChannel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AddNotificationChannel.

=head1 SYNOPSIS

    my $devops-guru = Paws->service('DevOpsGuru');
    my $AddNotificationChannelResponse = $devops -guru->AddNotificationChannel(
      Config => {
        Sns => {
          TopicArn => 'MyTopicArn',    # min: 36, max: 1024; OPTIONAL
        },

      },

    );

    # Results:
    my $Id = $AddNotificationChannelResponse->Id;

    # Returns a L<Paws::DevOpsGuru::AddNotificationChannelResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/devops-guru/AddNotificationChannel>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Config => L<Paws::DevOpsGuru::NotificationChannelConfig>

A C<NotificationChannelConfig> object that specifies what type of
notification channel to add. The one supported notification channel is
Amazon Simple Notification Service (Amazon SNS).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AddNotificationChannel in L<Paws::DevOpsGuru>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

