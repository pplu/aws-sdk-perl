package Paws::S3::QueueConfiguration;
  use Moose;
  has Events => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'Event', traits => ['NameInRequest'], required => 1);
  has Filter => (is => 'ro', isa => 'Paws::S3::NotificationConfigurationFilter');
  has Id => (is => 'ro', isa => 'Str');
  has QueueArn => (is => 'ro', isa => 'Str', request_name => 'Queue', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::QueueConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::QueueConfiguration object:

  $service_obj->Method(Att1 => { Events => $value, ..., QueueArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::QueueConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->Events

=head1 DESCRIPTION

A container for specifying the configuration for publication of
messages to an Amazon Simple Queue Service (Amazon SQS) queue.when
Amazon S3 detects specified events.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Events => ArrayRef[Str|Undef]

  


=head2 Filter => L<Paws::S3::NotificationConfigurationFilter>

  


=head2 Id => Str

  


=head2 B<REQUIRED> QueueArn => Str

  The Amazon Resource Name (ARN) of the Amazon SQS queue to which Amazon
S3 will publish a message when it detects events of the specified type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

