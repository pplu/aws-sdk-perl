package Paws::Kinesis::SubscribeToShardEventStream;
  use Moose;
  has InternalFailureException => (is => 'ro', isa => 'Paws::Kinesis::InternalFailureException');
  has KMSAccessDeniedException => (is => 'ro', isa => 'Paws::Kinesis::KMSAccessDeniedException');
  has KMSDisabledException => (is => 'ro', isa => 'Paws::Kinesis::KMSDisabledException');
  has KMSInvalidStateException => (is => 'ro', isa => 'Paws::Kinesis::KMSInvalidStateException');
  has KMSNotFoundException => (is => 'ro', isa => 'Paws::Kinesis::KMSNotFoundException');
  has KMSOptInRequired => (is => 'ro', isa => 'Paws::Kinesis::KMSOptInRequired');
  has KMSThrottlingException => (is => 'ro', isa => 'Paws::Kinesis::KMSThrottlingException');
  has ResourceInUseException => (is => 'ro', isa => 'Paws::Kinesis::ResourceInUseException');
  has ResourceNotFoundException => (is => 'ro', isa => 'Paws::Kinesis::ResourceNotFoundException');
  has SubscribeToShardEvent => (is => 'ro', isa => 'Paws::Kinesis::SubscribeToShardEvent', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kinesis::SubscribeToShardEventStream

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Kinesis::SubscribeToShardEventStream object:

  $service_obj->Method(Att1 => { InternalFailureException => $value, ..., SubscribeToShardEvent => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Kinesis::SubscribeToShardEventStream object:

  $result = $service_obj->Method(...);
  $result->Att1->InternalFailureException

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 InternalFailureException => L<Paws::Kinesis::InternalFailureException>

  


=head2 KMSAccessDeniedException => L<Paws::Kinesis::KMSAccessDeniedException>

  


=head2 KMSDisabledException => L<Paws::Kinesis::KMSDisabledException>

  


=head2 KMSInvalidStateException => L<Paws::Kinesis::KMSInvalidStateException>

  


=head2 KMSNotFoundException => L<Paws::Kinesis::KMSNotFoundException>

  


=head2 KMSOptInRequired => L<Paws::Kinesis::KMSOptInRequired>

  


=head2 KMSThrottlingException => L<Paws::Kinesis::KMSThrottlingException>

  


=head2 ResourceInUseException => L<Paws::Kinesis::ResourceInUseException>

  


=head2 ResourceNotFoundException => L<Paws::Kinesis::ResourceNotFoundException>

  


=head2 B<REQUIRED> SubscribeToShardEvent => L<Paws::Kinesis::SubscribeToShardEvent>

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Kinesis>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

