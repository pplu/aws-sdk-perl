package Paws::ConnectContactLens;
  use Moose;
  sub service { 'contact-lens' }
  sub signing_name { 'connect' }
  sub version { '2020-08-21' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub ListRealtimeContactAnalysisSegments {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectContactLens::ListRealtimeContactAnalysisSegments', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/ListRealtimeContactAnalysisSegments / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectContactLens - Perl Interface to AWS Amazon Connect Contact Lens

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('ConnectContactLens');
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

Contact Lens for Amazon Connect enables you to analyze conversations
between customer and agents, by using speech transcription, natural
language processing, and intelligent search capabilities. It performs
sentiment analysis, detects issues, and enables you to automatically
categorize contacts.

Contact Lens for Amazon Connect provides both real-time and post-call
analytics of customer-agent conversations. For more information, see
Analyze conversations using Contact Lens
(https://docs.aws.amazon.com/connect/latest/adminguide/analyze-conversations.html)
in the I<Amazon Connect Administrator Guide>.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/contact-lens-2020-08-21>


=head1 METHODS

=head2 ListRealtimeContactAnalysisSegments

=over

=item ContactId => Str

=item InstanceId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ConnectContactLens::ListRealtimeContactAnalysisSegments>

Returns: a L<Paws::ConnectContactLens::ListRealtimeContactAnalysisSegmentsResponse> instance

Provides a list of analysis segments for a real-time analysis session.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

