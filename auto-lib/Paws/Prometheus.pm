package Paws::Prometheus;
  use Moose;
  sub service { 'aps' }
  sub signing_name { 'aps' }
  sub version { '2020-08-01' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CreateWorkspace {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Prometheus::CreateWorkspace', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteWorkspace {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Prometheus::DeleteWorkspace', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeWorkspace {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Prometheus::DescribeWorkspace', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListWorkspaces {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Prometheus::ListWorkspaces', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateWorkspaceAlias {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Prometheus::UpdateWorkspaceAlias', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllWorkspaces {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListWorkspaces(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListWorkspaces(@_, nextToken => $next_result->nextToken);
        push @{ $result->workspaces }, @{ $next_result->workspaces };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'workspaces') foreach (@{ $result->workspaces });
        $result = $self->ListWorkspaces(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'workspaces') foreach (@{ $result->workspaces });
    }

    return undef
  }


  sub operations { qw/CreateWorkspace DeleteWorkspace DescribeWorkspace ListWorkspaces UpdateWorkspaceAlias / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Prometheus - Perl Interface to AWS Amazon Prometheus Service

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Prometheus');
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

Amazon Managed Service for Prometheus

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/aps-2020-08-01>


=head1 METHODS

=head2 CreateWorkspace

=over

=item [Alias => Str]

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::Prometheus::CreateWorkspace>

Returns: a L<Paws::Prometheus::CreateWorkspaceResponse> instance

Creates a new AMP workspace.


=head2 DeleteWorkspace

=over

=item WorkspaceId => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::Prometheus::DeleteWorkspace>

Returns: nothing

Deletes an AMP workspace.


=head2 DescribeWorkspace

=over

=item WorkspaceId => Str


=back

Each argument is described in detail in: L<Paws::Prometheus::DescribeWorkspace>

Returns: a L<Paws::Prometheus::DescribeWorkspaceResponse> instance

Describes an existing AMP workspace.


=head2 ListWorkspaces

=over

=item [Alias => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Prometheus::ListWorkspaces>

Returns: a L<Paws::Prometheus::ListWorkspacesResponse> instance

Lists all AMP workspaces, including workspaces being created or
deleted.


=head2 UpdateWorkspaceAlias

=over

=item WorkspaceId => Str

=item [Alias => Str]

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::Prometheus::UpdateWorkspaceAlias>

Returns: nothing

Updates an AMP workspace alias.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllWorkspaces(sub { },[Alias => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllWorkspaces([Alias => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - workspaces, passing the object as the first parameter, and the string 'workspaces' as the second parameter 

If not, it will return a a L<Paws::Prometheus::ListWorkspacesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

