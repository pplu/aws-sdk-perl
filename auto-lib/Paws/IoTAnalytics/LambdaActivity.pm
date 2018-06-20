package Paws::IoTAnalytics::LambdaActivity;
  use Moose;
  has BatchSize => (is => 'ro', isa => 'Int', request_name => 'batchSize', traits => ['NameInRequest'], required => 1);
  has LambdaName => (is => 'ro', isa => 'Str', request_name => 'lambdaName', traits => ['NameInRequest'], required => 1);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest'], required => 1);
  has Next => (is => 'ro', isa => 'Str', request_name => 'next', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::LambdaActivity

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTAnalytics::LambdaActivity object:

  $service_obj->Method(Att1 => { BatchSize => $value, ..., Next => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTAnalytics::LambdaActivity object:

  $result = $service_obj->Method(...);
  $result->Att1->BatchSize

=head1 DESCRIPTION

An activity that runs a Lambda function to modify the message.

=head1 ATTRIBUTES


=head2 B<REQUIRED> BatchSize => Int

  The number of messages passed to the Lambda function for processing.

The AWS Lambda function must be able to process all of these messages
within five minutes, which is the maximum timeout duration for Lambda
functions.


=head2 B<REQUIRED> LambdaName => Str

  The name of the Lambda function that is run on the message.


=head2 B<REQUIRED> Name => Str

  The name of the 'lambda' activity.


=head2 Next => Str

  The next activity in the pipeline.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

