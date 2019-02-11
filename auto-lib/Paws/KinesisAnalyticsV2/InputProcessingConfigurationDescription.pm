package Paws::KinesisAnalyticsV2::InputProcessingConfigurationDescription;
  use Moose;
  has InputLambdaProcessorDescription => (is => 'ro', isa => 'Paws::KinesisAnalyticsV2::InputLambdaProcessorDescription');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::InputProcessingConfigurationDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisAnalyticsV2::InputProcessingConfigurationDescription object:

  $service_obj->Method(Att1 => { InputLambdaProcessorDescription => $value, ..., InputLambdaProcessorDescription => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisAnalyticsV2::InputProcessingConfigurationDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->InputLambdaProcessorDescription

=head1 DESCRIPTION

For an SQL-based Amazon Kinesis Data Analytics application, provides
the configuration information about an input processor. Currently, the
only input processor available is AWS Lambda
(https://aws.amazon.com/documentation/lambda/).

=head1 ATTRIBUTES


=head2 InputLambdaProcessorDescription => L<Paws::KinesisAnalyticsV2::InputLambdaProcessorDescription>

  Provides configuration information about the associated
InputLambdaProcessorDescription



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisAnalyticsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

