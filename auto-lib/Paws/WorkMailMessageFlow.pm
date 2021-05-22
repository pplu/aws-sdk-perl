package Paws::WorkMailMessageFlow;
  use Moose;
  sub service { 'workmailmessageflow' }
  sub signing_name { 'workmailmessageflow' }
  sub version { '2019-05-01' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub GetRawMessageContent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMailMessageFlow::GetRawMessageContent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutRawMessageContent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::WorkMailMessageFlow::PutRawMessageContent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/GetRawMessageContent PutRawMessageContent / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkMailMessageFlow - Perl Interface to AWS Amazon WorkMail Message Flow

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('WorkMailMessageFlow');
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

The WorkMail Message Flow API provides access to email messages as they
are being sent and received by a WorkMail organization.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workmailmessageflow-2019-05-01>


=head1 METHODS

=head2 GetRawMessageContent

=over

=item MessageId => Str


=back

Each argument is described in detail in: L<Paws::WorkMailMessageFlow::GetRawMessageContent>

Returns: a L<Paws::WorkMailMessageFlow::GetRawMessageContentResponse> instance

Retrieves the raw content of an in-transit email message, in MIME
format.


=head2 PutRawMessageContent

=over

=item Content => L<Paws::WorkMailMessageFlow::RawMessageContent>

=item MessageId => Str


=back

Each argument is described in detail in: L<Paws::WorkMailMessageFlow::PutRawMessageContent>

Returns: a L<Paws::WorkMailMessageFlow::PutRawMessageContentResponse> instance

Updates the raw content of an in-transit email message, in MIME format.

This example describes how to update in-transit email message. For more
information and examples for using this API, see Updating message
content with AWS Lambda
(https://docs.aws.amazon.com/workmail/latest/adminguide/update-with-lambda.html).

Updates to an in-transit message only appear when you call
C<PutRawMessageContent> from an AWS Lambda function configured with a
synchronous Run Lambda
(https://docs.aws.amazon.com/workmail/latest/adminguide/lambda.html#synchronous-rules)
rule. If you call C<PutRawMessageContent> on a delivered or sent
message, the message remains unchanged, even though
GetRawMessageContent
(https://docs.aws.amazon.com/workmail/latest/APIReference/API_messageflow_GetRawMessageContent.html)
returns an updated message.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

