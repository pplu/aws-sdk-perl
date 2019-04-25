
package Paws::FMS::GetNotificationChannel;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetNotificationChannel');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FMS::GetNotificationChannelResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FMS::GetNotificationChannel - Arguments for method GetNotificationChannel on L<Paws::FMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetNotificationChannel on the
L<Firewall Management Service|Paws::FMS> service. Use the attributes of this class
as arguments to method GetNotificationChannel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetNotificationChannel.

=head1 SYNOPSIS

    my $fms = Paws->service('FMS');
    my $GetNotificationChannelResponse = $fms->GetNotificationChannel();

    # Results:
    my $SnsRoleName = $GetNotificationChannelResponse->SnsRoleName;
    my $SnsTopicArn = $GetNotificationChannelResponse->SnsTopicArn;

    # Returns a L<Paws::FMS::GetNotificationChannelResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/fms/GetNotificationChannel>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetNotificationChannel in L<Paws::FMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

