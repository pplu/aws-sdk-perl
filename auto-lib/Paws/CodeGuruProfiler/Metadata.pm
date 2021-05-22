package Paws::CodeGuruProfiler::Metadata;
  use Moose;
  with 'Paws::API::MapParser';

  use MooseX::ClassAttribute;
  class_has xml_keys =>(is => 'ro', default => 'key');
  class_has xml_values =>(is => 'ro', default => 'value');

  has AgentId => (is => 'ro', isa => 'Str');
  has AwsRequestId => (is => 'ro', isa => 'Str');
  has ComputePlatform => (is => 'ro', isa => 'Str');
  has ExecutionEnvironment => (is => 'ro', isa => 'Str');
  has LambdaFunctionArn => (is => 'ro', isa => 'Str');
  has LambdaMemoryLimitInMB => (is => 'ro', isa => 'Str');
  has LambdaPreviousExecutionTimeInMilliseconds => (is => 'ro', isa => 'Str');
  has LambdaRemainingTimeInMilliseconds => (is => 'ro', isa => 'Str');
  has LambdaTimeGapBetweenInvokesInMilliseconds => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeGuruProfiler::Metadata

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeGuruProfiler::Metadata object:

  $service_obj->Method(Att1 => { AgentId => $value, ..., LambdaTimeGapBetweenInvokesInMilliseconds => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeGuruProfiler::Metadata object:

  $result = $service_obj->Method(...);
  $result->Att1->AgentId

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AgentId => Str


=head2 AwsRequestId => Str


=head2 ComputePlatform => Str


=head2 ExecutionEnvironment => Str


=head2 LambdaFunctionArn => Str


=head2 LambdaMemoryLimitInMB => Str


=head2 LambdaPreviousExecutionTimeInMilliseconds => Str


=head2 LambdaRemainingTimeInMilliseconds => Str


=head2 LambdaTimeGapBetweenInvokesInMilliseconds => Str



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeGuruProfiler>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

