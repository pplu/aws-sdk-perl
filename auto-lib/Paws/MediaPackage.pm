package Paws::MediaPackage;
  use Moose;
  sub service { 'mediapackage' }
  sub version { '2017-10-12' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CreateChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaPackage::CreateChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateOriginEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaPackage::CreateOriginEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaPackage::DeleteChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteOriginEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaPackage::DeleteOriginEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaPackage::DescribeChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeOriginEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaPackage::DescribeOriginEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListChannels {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaPackage::ListChannels', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListOriginEndpoints {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaPackage::ListOriginEndpoints', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RotateChannelCredentials {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaPackage::RotateChannelCredentials', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaPackage::UpdateChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateOriginEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaPackage::UpdateOriginEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllChannels {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListChannels(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListChannels(@_, NextToken => $next_result->NextToken);
        push @{ $result->Channels }, @{ $next_result->Channels };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Channels') foreach (@{ $result->Channels });
        $result = $self->ListChannels(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Channels') foreach (@{ $result->Channels });
    }

    return undef
  }
  sub ListAllOriginEndpoints {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListOriginEndpoints(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListOriginEndpoints(@_, NextToken => $next_result->NextToken);
        push @{ $result->OriginEndpoints }, @{ $next_result->OriginEndpoints };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'OriginEndpoints') foreach (@{ $result->OriginEndpoints });
        $result = $self->ListOriginEndpoints(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'OriginEndpoints') foreach (@{ $result->OriginEndpoints });
    }

    return undef
  }


  sub operations { qw/CreateChannel CreateOriginEndpoint DeleteChannel DeleteOriginEndpoint DescribeChannel DescribeOriginEndpoint ListChannels ListOriginEndpoints RotateChannelCredentials UpdateChannel UpdateOriginEndpoint / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackage - Perl Interface to AWS AWS Elemental MediaPackage

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('MediaPackage');
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

AWS Elemental MediaPackage

=head1 METHODS

=head2 CreateChannel(Id => Str, [Description => Str])

Each argument is described in detail in: L<Paws::MediaPackage::CreateChannel>

Returns: a L<Paws::MediaPackage::CreateChannelResponse> instance

Creates a new Channel.


=head2 CreateOriginEndpoint(ChannelId => Str, Id => Str, [DashPackage => L<Paws::MediaPackage::DashPackage>, Description => Str, HlsPackage => L<Paws::MediaPackage::HlsPackage>, ManifestName => Str, MssPackage => L<Paws::MediaPackage::MssPackage>, StartoverWindowSeconds => Int, TimeDelaySeconds => Int, Whitelist => ArrayRef[Str|Undef]])

Each argument is described in detail in: L<Paws::MediaPackage::CreateOriginEndpoint>

Returns: a L<Paws::MediaPackage::CreateOriginEndpointResponse> instance

Creates a new OriginEndpoint record.


=head2 DeleteChannel(Id => Str)

Each argument is described in detail in: L<Paws::MediaPackage::DeleteChannel>

Returns: a L<Paws::MediaPackage::DeleteChannelResponse> instance

Deletes an existing Channel.


=head2 DeleteOriginEndpoint(Id => Str)

Each argument is described in detail in: L<Paws::MediaPackage::DeleteOriginEndpoint>

Returns: a L<Paws::MediaPackage::DeleteOriginEndpointResponse> instance

Deletes an existing OriginEndpoint.


=head2 DescribeChannel(Id => Str)

Each argument is described in detail in: L<Paws::MediaPackage::DescribeChannel>

Returns: a L<Paws::MediaPackage::DescribeChannelResponse> instance

Gets details about a Channel.


=head2 DescribeOriginEndpoint(Id => Str)

Each argument is described in detail in: L<Paws::MediaPackage::DescribeOriginEndpoint>

Returns: a L<Paws::MediaPackage::DescribeOriginEndpointResponse> instance

Gets details about an existing OriginEndpoint.


=head2 ListChannels([MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::MediaPackage::ListChannels>

Returns: a L<Paws::MediaPackage::ListChannelsResponse> instance

Returns a collection of Channels.


=head2 ListOriginEndpoints([ChannelId => Str, MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::MediaPackage::ListOriginEndpoints>

Returns: a L<Paws::MediaPackage::ListOriginEndpointsResponse> instance

Returns a collection of OriginEndpoint records.


=head2 RotateChannelCredentials(Id => Str)

Each argument is described in detail in: L<Paws::MediaPackage::RotateChannelCredentials>

Returns: a L<Paws::MediaPackage::RotateChannelCredentialsResponse> instance

Changes the Channel ingest username and password.


=head2 UpdateChannel(Id => Str, [Description => Str])

Each argument is described in detail in: L<Paws::MediaPackage::UpdateChannel>

Returns: a L<Paws::MediaPackage::UpdateChannelResponse> instance

Updates an existing Channel.


=head2 UpdateOriginEndpoint(Id => Str, [DashPackage => L<Paws::MediaPackage::DashPackage>, Description => Str, HlsPackage => L<Paws::MediaPackage::HlsPackage>, ManifestName => Str, MssPackage => L<Paws::MediaPackage::MssPackage>, StartoverWindowSeconds => Int, TimeDelaySeconds => Int, Whitelist => ArrayRef[Str|Undef]])

Each argument is described in detail in: L<Paws::MediaPackage::UpdateOriginEndpoint>

Returns: a L<Paws::MediaPackage::UpdateOriginEndpointResponse> instance

Updates an existing OriginEndpoint.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllChannels(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllChannels([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Channels, passing the object as the first parameter, and the string 'Channels' as the second parameter 

If not, it will return a a L<Paws::MediaPackage::ListChannelsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllOriginEndpoints(sub { },[ChannelId => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllOriginEndpoints([ChannelId => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - OriginEndpoints, passing the object as the first parameter, and the string 'OriginEndpoints' as the second parameter 

If not, it will return a a L<Paws::MediaPackage::ListOriginEndpointsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

