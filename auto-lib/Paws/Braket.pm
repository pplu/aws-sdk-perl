package Paws::Braket;
  use Moose;
  sub service { 'braket' }
  sub signing_name { 'braket' }
  sub version { '2019-09-01' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CancelQuantumTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Braket::CancelQuantumTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateQuantumTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Braket::CreateQuantumTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDevice {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Braket::GetDevice', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetQuantumTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Braket::GetQuantumTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Braket::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchDevices {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Braket::SearchDevices', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchQuantumTasks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Braket::SearchQuantumTasks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Braket::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Braket::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub SearchAllDevices {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->SearchDevices(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->SearchDevices(@_, nextToken => $next_result->nextToken);
        push @{ $result->devices }, @{ $next_result->devices };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'devices') foreach (@{ $result->devices });
        $result = $self->SearchDevices(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'devices') foreach (@{ $result->devices });
    }

    return undef
  }
  sub SearchAllQuantumTasks {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->SearchQuantumTasks(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->SearchQuantumTasks(@_, nextToken => $next_result->nextToken);
        push @{ $result->quantumTasks }, @{ $next_result->quantumTasks };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'quantumTasks') foreach (@{ $result->quantumTasks });
        $result = $self->SearchQuantumTasks(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'quantumTasks') foreach (@{ $result->quantumTasks });
    }

    return undef
  }


  sub operations { qw/CancelQuantumTask CreateQuantumTask GetDevice GetQuantumTask ListTagsForResource SearchDevices SearchQuantumTasks TagResource UntagResource / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Braket - Perl Interface to AWS Braket

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Braket');
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

The Amazon Braket API Reference provides information about the
operations and structures supported in Amazon Braket.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01>


=head1 METHODS

=head2 CancelQuantumTask

=over

=item ClientToken => Str

=item QuantumTaskArn => Str


=back

Each argument is described in detail in: L<Paws::Braket::CancelQuantumTask>

Returns: a L<Paws::Braket::CancelQuantumTaskResponse> instance

Cancels the specified task.


=head2 CreateQuantumTask

=over

=item Action => Str

=item ClientToken => Str

=item DeviceArn => Str

=item OutputS3Bucket => Str

=item OutputS3KeyPrefix => Str

=item Shots => Int

=item [DeviceParameters => Str]

=item [Tags => L<Paws::Braket::TagsMap>]


=back

Each argument is described in detail in: L<Paws::Braket::CreateQuantumTask>

Returns: a L<Paws::Braket::CreateQuantumTaskResponse> instance

Creates a quantum task.


=head2 GetDevice

=over

=item DeviceArn => Str


=back

Each argument is described in detail in: L<Paws::Braket::GetDevice>

Returns: a L<Paws::Braket::GetDeviceResponse> instance

Retrieves the devices available in Amazon Braket.


=head2 GetQuantumTask

=over

=item QuantumTaskArn => Str


=back

Each argument is described in detail in: L<Paws::Braket::GetQuantumTask>

Returns: a L<Paws::Braket::GetQuantumTaskResponse> instance

Retrieves the specified quantum task.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::Braket::ListTagsForResource>

Returns: a L<Paws::Braket::ListTagsForResourceResponse> instance

Shows the tags associated with this resource.


=head2 SearchDevices

=over

=item Filters => ArrayRef[L<Paws::Braket::SearchDevicesFilter>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Braket::SearchDevices>

Returns: a L<Paws::Braket::SearchDevicesResponse> instance

Searches for devices using the specified filters.


=head2 SearchQuantumTasks

=over

=item Filters => ArrayRef[L<Paws::Braket::SearchQuantumTasksFilter>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Braket::SearchQuantumTasks>

Returns: a L<Paws::Braket::SearchQuantumTasksResponse> instance

Searches for tasks that match the specified filter values.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::Braket::TagsMap>


=back

Each argument is described in detail in: L<Paws::Braket::TagResource>

Returns: a L<Paws::Braket::TagResourceResponse> instance

Add a tag to the specified resource.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Braket::UntagResource>

Returns: a L<Paws::Braket::UntagResourceResponse> instance

Remove tags from a resource.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 SearchAllDevices(sub { },Filters => ArrayRef[L<Paws::Braket::SearchDevicesFilter>], [MaxResults => Int, NextToken => Str])

=head2 SearchAllDevices(Filters => ArrayRef[L<Paws::Braket::SearchDevicesFilter>], [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - devices, passing the object as the first parameter, and the string 'devices' as the second parameter 

If not, it will return a a L<Paws::Braket::SearchDevicesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 SearchAllQuantumTasks(sub { },Filters => ArrayRef[L<Paws::Braket::SearchQuantumTasksFilter>], [MaxResults => Int, NextToken => Str])

=head2 SearchAllQuantumTasks(Filters => ArrayRef[L<Paws::Braket::SearchQuantumTasksFilter>], [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - quantumTasks, passing the object as the first parameter, and the string 'quantumTasks' as the second parameter 

If not, it will return a a L<Paws::Braket::SearchQuantumTasksResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

