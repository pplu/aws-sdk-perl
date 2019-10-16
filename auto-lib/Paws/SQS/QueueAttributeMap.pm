package Paws::SQS::QueueAttributeMap;
  use Moo;
  with 'Paws::API::MapParser';

  use MooX::ClassAttribute;
  class_has xml_keys =>(is => 'ro', default => 'Name');
  class_has xml_values =>(is => 'ro', default => 'Value');
  use Types::Standard qw/Str/;
  has All => (is => 'ro', isa => Str);
  has ApproximateNumberOfMessages => (is => 'ro', isa => Str);
  has ApproximateNumberOfMessagesDelayed => (is => 'ro', isa => Str);
  has ApproximateNumberOfMessagesNotVisible => (is => 'ro', isa => Str);
  has ContentBasedDeduplication => (is => 'ro', isa => Str);
  has CreatedTimestamp => (is => 'ro', isa => Str);
  has DelaySeconds => (is => 'ro', isa => Str);
  has FifoQueue => (is => 'ro', isa => Str);
  has KmsDataKeyReusePeriodSeconds => (is => 'ro', isa => Str);
  has KmsMasterKeyId => (is => 'ro', isa => Str);
  has LastModifiedTimestamp => (is => 'ro', isa => Str);
  has MaximumMessageSize => (is => 'ro', isa => Str);
  has MessageRetentionPeriod => (is => 'ro', isa => Str);
  has Policy => (is => 'ro', isa => Str);
  has QueueArn => (is => 'ro', isa => Str);
  has ReceiveMessageWaitTimeSeconds => (is => 'ro', isa => Str);
  has RedrivePolicy => (is => 'ro', isa => Str);
  has VisibilityTimeout => (is => 'ro', isa => Str);

  sub params_map {
    our $Params_map ||= {
                    types => {
                               'All' => {
                                          type => 'Str',
                                        },
                               'ApproximateNumberOfMessages' => {
                                          type => 'Str',
                                        },
                               'ApproximateNumberOfMessagesDelayed' => {
                                          type => 'Str',
                                        },
                               'ApproximateNumberOfMessagesNotVisible' => {
                                          type => 'Str',
                                        },
                               'ContentBasedDeduplication' => {
                                          type => 'Str',
                                        },
                               'CreatedTimestamp' => {
                                          type => 'Str',
                                        },
                               'DelaySeconds' => {
                                          type => 'Str',
                                        },
                               'FifoQueue' => {
                                          type => 'Str',
                                        },
                               'KmsDataKeyReusePeriodSeconds' => {
                                          type => 'Str',
                                        },
                               'KmsMasterKeyId' => {
                                          type => 'Str',
                                        },
                               'LastModifiedTimestamp' => {
                                          type => 'Str',
                                        },
                               'MaximumMessageSize' => {
                                          type => 'Str',
                                        },
                               'MessageRetentionPeriod' => {
                                          type => 'Str',
                                        },
                               'Policy' => {
                                          type => 'Str',
                                        },
                               'QueueArn' => {
                                          type => 'Str',
                                        },
                               'ReceiveMessageWaitTimeSeconds' => {
                                          type => 'Str',
                                        },
                               'RedrivePolicy' => {
                                          type => 'Str',
                                        },
                               'VisibilityTimeout' => {
                                          type => 'Str',
                                        },
                             },
                  };
    return $Params_map;
  }

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


=head2 All => 


=head2 ApproximateNumberOfMessages => 


=head2 ApproximateNumberOfMessagesDelayed => 


=head2 ApproximateNumberOfMessagesNotVisible => 


=head2 ContentBasedDeduplication => 


=head2 CreatedTimestamp => 


=head2 DelaySeconds => 


=head2 FifoQueue => 


=head2 KmsDataKeyReusePeriodSeconds => 


=head2 KmsMasterKeyId => 


=head2 LastModifiedTimestamp => 


=head2 MaximumMessageSize => 


=head2 MessageRetentionPeriod => 


=head2 Policy => 


=head2 QueueArn => 


=head2 ReceiveMessageWaitTimeSeconds => 


=head2 RedrivePolicy => 


=head2 VisibilityTimeout => 



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SQS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

