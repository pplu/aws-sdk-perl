package Paws::Finspace;
  use Moose;
  sub service { 'finspace' }
  sub signing_name { 'finspace' }
  sub version { '2021-03-12' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CreateEnvironment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Finspace::CreateEnvironment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteEnvironment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Finspace::DeleteEnvironment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEnvironment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Finspace::GetEnvironment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEnvironments {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Finspace::ListEnvironments', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Finspace::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Finspace::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Finspace::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateEnvironment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Finspace::UpdateEnvironment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/CreateEnvironment DeleteEnvironment GetEnvironment ListEnvironments ListTagsForResource TagResource UntagResource UpdateEnvironment / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Finspace - Perl Interface to AWS FinSpace User Environment Management service

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Finspace');
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

The FinSpace management service provides the APIs for managing the
FinSpace environments.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12>


=head1 METHODS

=head2 CreateEnvironment

=over

=item Name => Str

=item [Description => Str]

=item [FederationMode => Str]

=item [FederationParameters => L<Paws::Finspace::FederationParameters>]

=item [KmsKeyId => Str]

=item [Tags => L<Paws::Finspace::TagMap>]


=back

Each argument is described in detail in: L<Paws::Finspace::CreateEnvironment>

Returns: a L<Paws::Finspace::CreateEnvironmentResponse> instance

Create a new FinSpace environment.


=head2 DeleteEnvironment

=over

=item EnvironmentId => Str


=back

Each argument is described in detail in: L<Paws::Finspace::DeleteEnvironment>

Returns: a L<Paws::Finspace::DeleteEnvironmentResponse> instance

Delete an FinSpace environment.


=head2 GetEnvironment

=over

=item EnvironmentId => Str


=back

Each argument is described in detail in: L<Paws::Finspace::GetEnvironment>

Returns: a L<Paws::Finspace::GetEnvironmentResponse> instance

Returns the FinSpace environment object.


=head2 ListEnvironments

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Finspace::ListEnvironments>

Returns: a L<Paws::Finspace::ListEnvironmentsResponse> instance

A list of all of your FinSpace environments.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::Finspace::ListTagsForResource>

Returns: a L<Paws::Finspace::ListTagsForResourceResponse> instance

A list of all tags for a resource.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::Finspace::TagMap>


=back

Each argument is described in detail in: L<Paws::Finspace::TagResource>

Returns: a L<Paws::Finspace::TagResourceResponse> instance

Adds metadata tags to a FinSpace resource.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Finspace::UntagResource>

Returns: a L<Paws::Finspace::UntagResourceResponse> instance

Removes metadata tags from a FinSpace resource.


=head2 UpdateEnvironment

=over

=item EnvironmentId => Str

=item [Description => Str]

=item [FederationMode => Str]

=item [FederationParameters => L<Paws::Finspace::FederationParameters>]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::Finspace::UpdateEnvironment>

Returns: a L<Paws::Finspace::UpdateEnvironmentResponse> instance

Update your FinSpace environment.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

