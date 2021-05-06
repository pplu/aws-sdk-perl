package Paws::SQS::QueueAttributeMap;
  use Moose;
  with 'Paws::API::MapParser';

  use MooseX::ClassAttribute;
  class_has xml_keys =>(is => 'ro', default => 'Name');
  class_has xml_values =>(is => 'ro', default => 'Value');

  has All => (is => 'ro', isa => 'Str');
  has ApproximateNumberOfMessages => (is => 'ro', isa => 'Str');
  has ApproximateNumberOfMessagesDelayed => (is => 'ro', isa => 'Str');
  has ApproximateNumberOfMessagesNotVisible => (is => 'ro', isa => 'Str');
  has ContentBasedDeduplication => (is => 'ro', isa => 'Str');
  has CreatedTimestamp => (is => 'ro', isa => 'Str');
  has DelaySeconds => (is => 'ro', isa => 'Str');
  has FifoQueue => (is => 'ro', isa => 'Str');
  has KmsDataKeyReusePeriodSeconds => (is => 'ro', isa => 'Str');
  has KmsMasterKeyId => (is => 'ro', isa => 'Str');
  has LastModifiedTimestamp => (is => 'ro', isa => 'Str');
  has MaximumMessageSize => (is => 'ro', isa => 'Str');
  has MessageRetentionPeriod => (is => 'ro', isa => 'Str');
  has Policy => (is => 'ro', isa => 'Str');
  has QueueArn => (is => 'ro', isa => 'Str');
  has ReceiveMessageWaitTimeSeconds => (is => 'ro', isa => 'Str');
  has RedrivePolicy => (is => 'ro', isa => 'Str');
  has VisibilityTimeout => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SQS::QueueAttributeMap

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SQS::QueueAttributeMap object:

  $service_obj->Method(Att1 => { All => $value, ..., VisibilityTimeout => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SQS::QueueAttributeMap object:

  $result = $service_obj->Method(...);
  $result->Att1->All

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 All => Str


=head2 ApproximateNumberOfMessages => Str


=head2 ApproximateNumberOfMessagesDelayed => Str


=head2 ApproximateNumberOfMessagesNotVisible => Str


=head2 ContentBasedDeduplication => Str


=head2 CreatedTimestamp => Str


=head2 DelaySeconds => Str


=head2 FifoQueue => Str


=head2 KmsDataKeyReusePeriodSeconds => Str


=head2 KmsMasterKeyId => Str


=head2 LastModifiedTimestamp => Str


=head2 MaximumMessageSize => Str


=head2 MessageRetentionPeriod => Str


=head2 Policy => Str


=head2 QueueArn => Str


=head2 ReceiveMessageWaitTimeSeconds => Str


=head2 RedrivePolicy => Str


=head2 VisibilityTimeout => Str



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SQS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

