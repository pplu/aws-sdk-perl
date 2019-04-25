package Paws::MediaTailor;
  use Moose;
  sub service { 'api.mediatailor' }
  sub signing_name { 'mediatailor' }
  sub version { '2018-04-23' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub DeletePlaybackConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaTailor::DeletePlaybackConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPlaybackConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaTailor::GetPlaybackConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPlaybackConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaTailor::ListPlaybackConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutPlaybackConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MediaTailor::PutPlaybackConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllPlaybackConfigurations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPlaybackConfigurations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListPlaybackConfigurations(@_, NextToken => $next_result->NextToken);
        push @{ $result->Items }, @{ $next_result->Items };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Items') foreach (@{ $result->Items });
        $result = $self->ListPlaybackConfigurations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Items') foreach (@{ $result->Items });
    }

    return undef
  }


  sub operations { qw/DeletePlaybackConfiguration GetPlaybackConfiguration ListPlaybackConfigurations PutPlaybackConfiguration / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaTailor - Perl Interface to AWS AWS MediaTailor

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('MediaTailor');
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

Use the AWS Elemental MediaTailor SDK to configure scalable ad
insertion for your live and VOD content. With AWS Elemental
MediaTailor, you can serve targeted ads to viewers while maintaining
broadcast quality in over-the-top (OTT) video applications. For
information about using the service, including detailed information
about the settings covered in this guide, see the AWS Elemental
MediaTailor User Guide.

Through the SDK, you manage AWS Elemental MediaTailor configurations
the same as you do through the console. For example, you specify ad
insertion behavior and mapping information for the origin server and
the ad decision server (ADS).

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.mediatailor-2018-04-23>


=head1 METHODS

=head2 DeletePlaybackConfiguration

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::MediaTailor::DeletePlaybackConfiguration>

Returns: a L<Paws::MediaTailor::DeletePlaybackConfigurationResponse> instance

Deletes the configuration for the specified name.


=head2 GetPlaybackConfiguration

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::MediaTailor::GetPlaybackConfiguration>

Returns: a L<Paws::MediaTailor::GetPlaybackConfigurationResponse> instance

Returns the configuration for the specified name.


=head2 ListPlaybackConfigurations

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::MediaTailor::ListPlaybackConfigurations>

Returns: a L<Paws::MediaTailor::ListPlaybackConfigurationsResponse> instance

Returns a list of the configurations defined in AWS Elemental
MediaTailor. You can specify a max number of configurations to return
at a time. The default max is 50. Results are returned in pagefuls. If
AWS Elemental MediaTailor has more configurations than the specified
max, it provides parameters in the response that you can use to
retrieve the next pageful.


=head2 PutPlaybackConfiguration

=over

=item [AdDecisionServerUrl => Str]

=item [CdnConfiguration => L<Paws::MediaTailor::CdnConfiguration>]

=item [DashConfiguration => L<Paws::MediaTailor::DashConfigurationForPut>]

=item [Name => Str]

=item [SlateAdUrl => Str]

=item [TranscodeProfileName => Str]

=item [VideoContentSourceUrl => Str]


=back

Each argument is described in detail in: L<Paws::MediaTailor::PutPlaybackConfiguration>

Returns: a L<Paws::MediaTailor::PutPlaybackConfigurationResponse> instance

Adds a new configuration to AWS Elemental MediaTailor.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllPlaybackConfigurations(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllPlaybackConfigurations([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Items, passing the object as the first parameter, and the string 'Items' as the second parameter 

If not, it will return a a L<Paws::MediaTailor::ListPlaybackConfigurationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

