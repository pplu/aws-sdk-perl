package Paws::Kinesis::ConsumerDescription;
  use Moose;
  has ConsumerARN => (is => 'ro', isa => 'Str', required => 1);
  has ConsumerCreationTimestamp => (is => 'ro', isa => 'Str', required => 1);
  has ConsumerName => (is => 'ro', isa => 'Str', required => 1);
  has ConsumerStatus => (is => 'ro', isa => 'Str', required => 1);
  has StreamARN => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kinesis::ConsumerDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Kinesis::ConsumerDescription object:

  $service_obj->Method(Att1 => { ConsumerARN => $value, ..., StreamARN => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Kinesis::ConsumerDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->ConsumerARN

=head1 DESCRIPTION

An object that represents the details of a registered consumer.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConsumerARN => Str

  When you register a consumer, Kinesis Data Streams generates an ARN for
it. You need this ARN to be able to call SubscribeToShard.

If you delete a consumer and then create a new one with the same name,
it won't have the same ARN. That's because consumer ARNs contain the
creation timestamp. This is important to keep in mind if you have IAM
policies that reference consumer ARNs.


=head2 B<REQUIRED> ConsumerCreationTimestamp => Str

  


=head2 B<REQUIRED> ConsumerName => Str

  The name of the consumer is something you choose when you register the
consumer.


=head2 B<REQUIRED> ConsumerStatus => Str

  A consumer can't read data while in the C<CREATING> or C<DELETING>
states.


=head2 B<REQUIRED> StreamARN => Str

  The ARN of the stream with which you registered the consumer.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Kinesis>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

