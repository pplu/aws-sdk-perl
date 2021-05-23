
package Paws::DevOpsGuru::RemoveNotificationChannel;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Id', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RemoveNotificationChannel');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/channels/{Id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DevOpsGuru::RemoveNotificationChannelResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DevOpsGuru::RemoveNotificationChannel - Arguments for method RemoveNotificationChannel on L<Paws::DevOpsGuru>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RemoveNotificationChannel on the
L<Amazon DevOps Guru|Paws::DevOpsGuru> service. Use the attributes of this class
as arguments to method RemoveNotificationChannel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RemoveNotificationChannel.

=head1 SYNOPSIS

    my $devops-guru = Paws->service('DevOpsGuru');
    my $RemoveNotificationChannelResponse =
      $devops -guru->RemoveNotificationChannel(
      Id => 'MyNotificationChannelId',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/devops-guru/RemoveNotificationChannel>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The ID of the notification channel to be removed.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RemoveNotificationChannel in L<Paws::DevOpsGuru>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

