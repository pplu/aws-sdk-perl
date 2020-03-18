package Paws::StepFunctions::LogDestination;
  use Moose;
  has CloudWatchLogsLogGroup => (is => 'ro', isa => 'Paws::StepFunctions::CloudWatchLogsLogGroup', request_name => 'cloudWatchLogsLogGroup', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::StepFunctions::LogDestination

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::StepFunctions::LogDestination object:

  $service_obj->Method(Att1 => { CloudWatchLogsLogGroup => $value, ..., CloudWatchLogsLogGroup => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::StepFunctions::LogDestination object:

  $result = $service_obj->Method(...);
  $result->Att1->CloudWatchLogsLogGroup

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 CloudWatchLogsLogGroup => L<Paws::StepFunctions::CloudWatchLogsLogGroup>

  An object describing a CloudWatch log group. For more information, see
AWS::Logs::LogGroup
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-loggroup.html)
in the AWS CloudFormation User Guide.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::StepFunctions>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

