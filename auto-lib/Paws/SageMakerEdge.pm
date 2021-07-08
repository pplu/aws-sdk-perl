package Paws::SageMakerEdge;
  use Moose;
  sub service { 'edge.sagemaker' }
  sub signing_name { 'sagemaker' }
  sub version { '2020-09-23' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub GetDeviceRegistration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMakerEdge::GetDeviceRegistration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SendHeartbeat {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMakerEdge::SendHeartbeat', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/GetDeviceRegistration SendHeartbeat / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMakerEdge - Perl Interface to AWS Amazon Sagemaker Edge Manager

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('SageMakerEdge');
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

SageMaker Edge Manager dataplane service for communicating with active
agents.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/edge.sagemaker-2020-09-23>


=head1 METHODS

=head2 GetDeviceRegistration

=over

=item DeviceFleetName => Str

=item DeviceName => Str


=back

Each argument is described in detail in: L<Paws::SageMakerEdge::GetDeviceRegistration>

Returns: a L<Paws::SageMakerEdge::GetDeviceRegistrationResult> instance

Use to check if a device is registered with SageMaker Edge Manager.


=head2 SendHeartbeat

=over

=item AgentVersion => Str

=item DeviceFleetName => Str

=item DeviceName => Str

=item [AgentMetrics => ArrayRef[L<Paws::SageMakerEdge::EdgeMetric>]]

=item [Models => ArrayRef[L<Paws::SageMakerEdge::Model>]]


=back

Each argument is described in detail in: L<Paws::SageMakerEdge::SendHeartbeat>

Returns: nothing

Use to get the current status of devices registered on SageMaker Edge
Manager.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

