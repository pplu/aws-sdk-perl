package Paws::FinspaceData;
  use Moose;
  sub service { 'finspace-api' }
  sub signing_name { 'finspace-api' }
  sub version { '2020-07-13' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CreateChangeset {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FinspaceData::CreateChangeset', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetProgrammaticAccessCredentials {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FinspaceData::GetProgrammaticAccessCredentials', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetWorkingLocation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FinspaceData::GetWorkingLocation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/CreateChangeset GetProgrammaticAccessCredentials GetWorkingLocation / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::FinspaceData - Perl Interface to AWS FinSpace Public API

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('FinspaceData');
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

The FinSpace APIs let you take actions inside the FinSpace environment.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/finspace-api-2020-07-13>


=head1 METHODS

=head2 CreateChangeset

=over

=item ChangeType => Str

=item DatasetId => Str

=item SourceParams => L<Paws::FinspaceData::StringMap>

=item SourceType => Str

=item [FormatParams => L<Paws::FinspaceData::StringMap>]

=item [FormatType => Str]

=item [Tags => L<Paws::FinspaceData::StringMap>]


=back

Each argument is described in detail in: L<Paws::FinspaceData::CreateChangeset>

Returns: a L<Paws::FinspaceData::CreateChangesetResponse> instance

Creates a new changeset in a FinSpace dataset.


=head2 GetProgrammaticAccessCredentials

=over

=item EnvironmentId => Str

=item [DurationInMinutes => Int]


=back

Each argument is described in detail in: L<Paws::FinspaceData::GetProgrammaticAccessCredentials>

Returns: a L<Paws::FinspaceData::GetProgrammaticAccessCredentialsResponse> instance

Request programmatic credentials to use with Habanero SDK.


=head2 GetWorkingLocation

=over

=item [LocationType => Str]


=back

Each argument is described in detail in: L<Paws::FinspaceData::GetWorkingLocation>

Returns: a L<Paws::FinspaceData::GetWorkingLocationResponse> instance

A temporary Amazon S3 location to copy your files from a source
location to stage or use as a scratch space in Habanero notebook.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

