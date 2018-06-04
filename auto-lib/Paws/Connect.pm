package Paws::Connect;
  use Moose;
  sub service { 'connect' }
  sub signing_name { 'connect' }
  sub version { '2017-08-08' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub StartOutboundVoiceContact {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::StartOutboundVoiceContact', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopContact {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Connect::StopContact', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/StartOutboundVoiceContact StopContact / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect - Perl Interface to AWS Amazon Connect Service

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Connect');
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

The Amazon Connect API Reference provides descriptions, syntax, and
usage examples for each of the Amazon Connect actions, data types,
parameters, and errors. Amazon Connect is a cloud-based contact center
solution that makes it easy to set up and manage a customer contact
center and provide reliable customer engagement at any scale.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08>

=head1 METHODS

=head2 StartOutboundVoiceContact

=over

=item ContactFlowId => Str

=item DestinationPhoneNumber => Str

=item InstanceId => Str

=item [Attributes => L<Paws::Connect::Attributes>]

=item [ClientToken => Str]

=item [QueueId => Str]

=item [SourcePhoneNumber => Str]


=back

Each argument is described in detail in: L<Paws::Connect::StartOutboundVoiceContact>

Returns: a L<Paws::Connect::StartOutboundVoiceContactResponse> instance

The C<StartOutboundVoiceContact> operation initiates a contact flow to
place an outbound call to a customer.

There is a throttling limit placed on usage of the API that includes a
C<RateLimit> of 2 per second, and a C<BurstLimit> of 5 per second.

If you are using an IAM account, it must have permissions to the
C<connect:StartOutboundVoiceContact> action.


=head2 StopContact

=over

=item ContactId => Str

=item InstanceId => Str


=back

Each argument is described in detail in: L<Paws::Connect::StopContact>

Returns: a L<Paws::Connect::StopContactResponse> instance

Ends the contact initiated by the C<StartOutboundVoiceContact>
operation.

If you are using an IAM account, it must have permissions to the
C<connect:StopContact> operation.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

