package Paws::SageMakerA2IRuntime;
  use Moose;
  sub service { 'a2i-runtime.sagemaker' }
  sub signing_name { 'sagemaker' }
  sub version { '2019-11-07' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub DeleteHumanLoop {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMakerA2IRuntime::DeleteHumanLoop', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeHumanLoop {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMakerA2IRuntime::DescribeHumanLoop', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListHumanLoops {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMakerA2IRuntime::ListHumanLoops', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartHumanLoop {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMakerA2IRuntime::StartHumanLoop', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopHumanLoop {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMakerA2IRuntime::StopHumanLoop', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllHumanLoops {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListHumanLoops(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListHumanLoops(@_, NextToken => $next_result->NextToken);
        push @{ $result->HumanLoopSummaries }, @{ $next_result->HumanLoopSummaries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'HumanLoopSummaries') foreach (@{ $result->HumanLoopSummaries });
        $result = $self->ListHumanLoops(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'HumanLoopSummaries') foreach (@{ $result->HumanLoopSummaries });
    }

    return undef
  }


  sub operations { qw/DeleteHumanLoop DescribeHumanLoop ListHumanLoops StartHumanLoop StopHumanLoop / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMakerA2IRuntime - Perl Interface to AWS Amazon Augmented AI Runtime

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('SageMakerA2IRuntime');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

Amazon Augmented AI (Amazon A2I) adds the benefit of human judgment to
any machine learning application. When an AI application can't evaluate
data with a high degree of confidence, human reviewers can take over.
This human review is called a human review workflow. To create and
start a human review workflow, you need three resources: a I<worker
task template>, a I<flow definition>, and a I<human loop>.

For information about these resources and prerequisites for using
Amazon A2I, see Get Started with Amazon Augmented AI
(https://docs.aws.amazon.com/sagemaker/latest/dg/a2i-getting-started.html)
in the Amazon SageMaker Developer Guide.

This API reference includes information about API actions and data
types that you can use to interact with Amazon A2I programmatically.
Use this guide to:

=over

=item *

Start a human loop with the C<StartHumanLoop> operation when using
Amazon A2I with a I<custom task type>. To learn more about the
difference between custom and built-in task types, see Use Task Types
(https://docs.aws.amazon.com/sagemaker/latest/dg/a2i-task-types-general.html).
To learn how to start a human loop using this API, see Create and Start
a Human Loop for a Custom Task Type
(https://docs.aws.amazon.com/sagemaker/latest/dg/a2i-start-human-loop.html#a2i-instructions-starthumanloop)
in the Amazon SageMaker Developer Guide.

=item *

Manage your human loops. You can list all human loops that you have
created, describe individual human loops, and stop and delete human
loops. To learn more, see Monitor and Manage Your Human Loop
(https://docs.aws.amazon.com/sagemaker/latest/dg/a2i-monitor-humanloop-results.html)
in the Amazon SageMaker Developer Guide.

=back

Amazon A2I integrates APIs from various AWS services to create and
start human review workflows for those services. To learn how Amazon
A2I uses these APIs, see Use APIs in Amazon A2I
(https://docs.aws.amazon.com/sagemaker/latest/dg/a2i-api-references.html)
in the Amazon SageMaker Developer Guide.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/a2i-runtime.sagemaker-2019-11-07>


=head1 METHODS

=head2 DeleteHumanLoop

=over

=item HumanLoopName => Str


=back

Each argument is described in detail in: L<Paws::SageMakerA2IRuntime::DeleteHumanLoop>

Returns: a L<Paws::SageMakerA2IRuntime::DeleteHumanLoopResponse> instance

Deletes the specified human loop for a flow definition.

If the human loop was deleted, this operation will return a
C<ResourceNotFoundException>.


=head2 DescribeHumanLoop

=over

=item HumanLoopName => Str


=back

Each argument is described in detail in: L<Paws::SageMakerA2IRuntime::DescribeHumanLoop>

Returns: a L<Paws::SageMakerA2IRuntime::DescribeHumanLoopResponse> instance

Returns information about the specified human loop. If the human loop
was deleted, this operation will return a C<ResourceNotFoundException>
error.


=head2 ListHumanLoops

=over

=item FlowDefinitionArn => Str

=item [CreationTimeAfter => Str]

=item [CreationTimeBefore => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::SageMakerA2IRuntime::ListHumanLoops>

Returns: a L<Paws::SageMakerA2IRuntime::ListHumanLoopsResponse> instance

Returns information about human loops, given the specified parameters.
If a human loop was deleted, it will not be included.


=head2 StartHumanLoop

=over

=item FlowDefinitionArn => Str

=item HumanLoopInput => L<Paws::SageMakerA2IRuntime::HumanLoopInput>

=item HumanLoopName => Str

=item [DataAttributes => L<Paws::SageMakerA2IRuntime::HumanLoopDataAttributes>]


=back

Each argument is described in detail in: L<Paws::SageMakerA2IRuntime::StartHumanLoop>

Returns: a L<Paws::SageMakerA2IRuntime::StartHumanLoopResponse> instance

Starts a human loop, provided that at least one activation condition is
met.


=head2 StopHumanLoop

=over

=item HumanLoopName => Str


=back

Each argument is described in detail in: L<Paws::SageMakerA2IRuntime::StopHumanLoop>

Returns: a L<Paws::SageMakerA2IRuntime::StopHumanLoopResponse> instance

Stops the specified human loop.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllHumanLoops(sub { },FlowDefinitionArn => Str, [CreationTimeAfter => Str, CreationTimeBefore => Str, MaxResults => Int, NextToken => Str, SortOrder => Str])

=head2 ListAllHumanLoops(FlowDefinitionArn => Str, [CreationTimeAfter => Str, CreationTimeBefore => Str, MaxResults => Int, NextToken => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - HumanLoopSummaries, passing the object as the first parameter, and the string 'HumanLoopSummaries' as the second parameter 

If not, it will return a a L<Paws::SageMakerA2IRuntime::ListHumanLoopsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

