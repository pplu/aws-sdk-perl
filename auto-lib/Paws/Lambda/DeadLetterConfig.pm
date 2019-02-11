package Paws::Lambda::DeadLetterConfig;
  use Moose;
  has TargetArn => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::DeadLetterConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Lambda::DeadLetterConfig object:

  $service_obj->Method(Att1 => { TargetArn => $value, ..., TargetArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Lambda::DeadLetterConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->TargetArn

=head1 DESCRIPTION

The dead letter queue
(http://docs.aws.amazon.com/lambda/latest/dg/dlq.html) for failed
asynchronous invocations.

=head1 ATTRIBUTES


=head2 TargetArn => Str

  The Amazon Resource Name (ARN) of an Amazon SQS queue or Amazon SNS
topic.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Lambda>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

