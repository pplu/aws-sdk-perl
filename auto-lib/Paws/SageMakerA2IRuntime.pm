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

Amazon Augmented AI (Augmented AI) (Preview) is a service that adds
human judgment to any machine learning application. Human reviewers can
take over when an AI application can't evaluate data with a high degree
of confidence.

From fraudulent bank transaction identification to document processing
to image analysis, machine learning models can be trained to make
decisions as well as or better than a human. Nevertheless, some
decisions require contextual interpretation, such as when you need to
decide whether an image is appropriate for a given audience. Content
moderation guidelines are nuanced and highly dependent on context, and
they vary between countries. When trying to apply AI in these
situations, you can be forced to choose between "ML only" systems with
unacceptably high error rates or "human only" systems that are
expensive and difficult to scale, and that slow down decision making.

This API reference includes information about API actions and data
types you can use to interact with Augmented AI programmatically.

You can create a flow definition against the Augmented AI API. Provide
the Amazon Resource Name (ARN) of a flow definition to integrate AI
service APIs, such as C<Textract.AnalyzeDocument> and
C<Rekognition.DetectModerationLabels>. These AI services, in turn,
invoke the StartHumanLoop API, which evaluates conditions under which
humans will be invoked. If humans are required, Augmented AI creates a
human loop. Results of human work are available asynchronously in
Amazon Simple Storage Service (Amazon S3). You can use Amazon
CloudWatch Events to detect human work results.

You can find additional Augmented AI API documentation in the following
reference guides: Amazon Rekognition
(https://aws.amazon.com/rekognition/latest/dg/API_Reference.html),
Amazon SageMaker
(https://aws.amazon.com/sagemaker/latest/dg/API_Reference.html), and
Amazon Textract
(https://aws.amazon.com/textract/latest/dg/API_Reference.html).

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/a2i-runtime.sagemaker-2019-11-07>


=head1 METHODS

=head2 DeleteHumanLoop

=over

=item HumanLoopName => Str


=back

Each argument is described in detail in: L<Paws::SageMakerA2IRuntime::DeleteHumanLoop>

Returns: a L<Paws::SageMakerA2IRuntime::DeleteHumanLoopResponse> instance

Deletes the specified human loop for a flow definition.


=head2 DescribeHumanLoop

=over

=item HumanLoopName => Str


=back

Each argument is described in detail in: L<Paws::SageMakerA2IRuntime::DescribeHumanLoop>

Returns: a L<Paws::SageMakerA2IRuntime::DescribeHumanLoopResponse> instance

Returns information about the specified human loop.


=head2 ListHumanLoops

=over

=item [CreationTimeAfter => Str]

=item [CreationTimeBefore => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::SageMakerA2IRuntime::ListHumanLoops>

Returns: a L<Paws::SageMakerA2IRuntime::ListHumanLoopsResponse> instance

Returns information about human loops, given the specified parameters.


=head2 StartHumanLoop

=over

=item FlowDefinitionArn => Str

=item HumanLoopInput => L<Paws::SageMakerA2IRuntime::HumanLoopInputContent>

=item HumanLoopName => Str

=item [DataAttributes => L<Paws::SageMakerA2IRuntime::HumanReviewDataAttributes>]


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

=head2 ListAllHumanLoops(sub { },[CreationTimeAfter => Str, CreationTimeBefore => Str, MaxResults => Int, NextToken => Str, SortOrder => Str])

=head2 ListAllHumanLoops([CreationTimeAfter => Str, CreationTimeBefore => Str, MaxResults => Int, NextToken => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - HumanLoopSummaries, passing the object as the first parameter, and the string 'HumanLoopSummaries' as the second parameter 

If not, it will return a a L<Paws::SageMakerA2IRuntime::ListHumanLoopsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

