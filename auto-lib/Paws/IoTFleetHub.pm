package Paws::IoTFleetHub;
  use Moose;
  sub service { 'api.fleethub.iot' }
  sub signing_name { 'iotfleethub' }
  sub version { '2020-11-03' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CreateApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTFleetHub::CreateApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTFleetHub::DeleteApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTFleetHub::DescribeApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListApplications {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTFleetHub::ListApplications', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTFleetHub::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTFleetHub::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTFleetHub::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTFleetHub::UpdateApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllApplications {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListApplications(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListApplications(@_, nextToken => $next_result->nextToken);
        push @{ $result->applicationSummaries }, @{ $next_result->applicationSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'applicationSummaries') foreach (@{ $result->applicationSummaries });
        $result = $self->ListApplications(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'applicationSummaries') foreach (@{ $result->applicationSummaries });
    }

    return undef
  }


  sub operations { qw/CreateApplication DeleteApplication DescribeApplication ListApplications ListTagsForResource TagResource UntagResource UpdateApplication / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTFleetHub - Perl Interface to AWS AWS IoT Fleet Hub

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('IoTFleetHub');
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

With Fleet Hub for AWS IoT Device Management you can build stand-alone
web applications for monitoring the health of your device fleets.

Fleet Hub for AWS IoT Device Management is in public preview and is
subject to change.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.fleethub.iot-2020-11-03>


=head1 METHODS

=head2 CreateApplication

=over

=item ApplicationName => Str

=item RoleArn => Str

=item [ApplicationDescription => Str]

=item [ClientToken => Str]

=item [Tags => L<Paws::IoTFleetHub::TagMap>]


=back

Each argument is described in detail in: L<Paws::IoTFleetHub::CreateApplication>

Returns: a L<Paws::IoTFleetHub::CreateApplicationResponse> instance

Creates a Fleet Hub for AWS IoT Device Management web application.

Fleet Hub for AWS IoT Device Management is in public preview and is
subject to change.


=head2 DeleteApplication

=over

=item ApplicationId => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTFleetHub::DeleteApplication>

Returns: a L<Paws::IoTFleetHub::DeleteApplicationResponse> instance

Deletes a Fleet Hub for AWS IoT Device Management web application.

Fleet Hub for AWS IoT Device Management is in public preview and is
subject to change.


=head2 DescribeApplication

=over

=item ApplicationId => Str


=back

Each argument is described in detail in: L<Paws::IoTFleetHub::DescribeApplication>

Returns: a L<Paws::IoTFleetHub::DescribeApplicationResponse> instance

Gets information about a Fleet Hub for AWS IoT Device Management web
application.

Fleet Hub for AWS IoT Device Management is in public preview and is
subject to change.


=head2 ListApplications

=over

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTFleetHub::ListApplications>

Returns: a L<Paws::IoTFleetHub::ListApplicationsResponse> instance

Gets a list of Fleet Hub for AWS IoT Device Management web applications
for the current account.

Fleet Hub for AWS IoT Device Management is in public preview and is
subject to change.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::IoTFleetHub::ListTagsForResource>

Returns: a L<Paws::IoTFleetHub::ListTagsForResourceResponse> instance

Lists the tags for the specified resource.

Fleet Hub for AWS IoT Device Management is in public preview and is
subject to change.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::IoTFleetHub::TagMap>


=back

Each argument is described in detail in: L<Paws::IoTFleetHub::TagResource>

Returns: a L<Paws::IoTFleetHub::TagResourceResponse> instance

Adds to or modifies the tags of the specified resource. Tags are
metadata which can be used to manage a resource.

Fleet Hub for AWS IoT Device Management is in public preview and is
subject to change.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::IoTFleetHub::UntagResource>

Returns: a L<Paws::IoTFleetHub::UntagResourceResponse> instance

Removes the specified tags (metadata) from the resource.

Fleet Hub for AWS IoT Device Management is in public preview and is
subject to change.


=head2 UpdateApplication

=over

=item ApplicationId => Str

=item [ApplicationDescription => Str]

=item [ApplicationName => Str]

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTFleetHub::UpdateApplication>

Returns: a L<Paws::IoTFleetHub::UpdateApplicationResponse> instance

Updates information about a Fleet Hub for a AWS IoT Device Management
web application.

Fleet Hub for AWS IoT Device Management is in public preview and is
subject to change.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllApplications(sub { },[NextToken => Str])

=head2 ListAllApplications([NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - applicationSummaries, passing the object as the first parameter, and the string 'applicationSummaries' as the second parameter 

If not, it will return a a L<Paws::IoTFleetHub::ListApplicationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

