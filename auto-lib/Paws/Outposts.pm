package Paws::Outposts;
  use Moose;
  sub service { 'outposts' }
  sub signing_name { 'outposts' }
  sub version { '2019-12-03' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CreateOutpost {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Outposts::CreateOutpost', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetOutpost {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Outposts::GetOutpost', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetOutpostInstanceTypes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Outposts::GetOutpostInstanceTypes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListOutposts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Outposts::ListOutposts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSites {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Outposts::ListSites', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/CreateOutpost GetOutpost GetOutpostInstanceTypes ListOutposts ListSites / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Outposts - Perl Interface to AWS AWS Outposts

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Outposts');
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

AWS Outposts is a fully-managed service that extends AWS
infrastructure, APIs, and tools to customer premises. By providing
local access to AWS-managed infrastructure, AWS Outposts enables
customers to build and run applications on premises using the same
programming interfaces as in AWS Regions, while using local compute and
storage resources for lower latency and local data processing needs.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/outposts-2019-12-03>


=head1 METHODS

=head2 CreateOutpost

=over

=item SiteId => Str

=item [AvailabilityZone => Str]

=item [AvailabilityZoneId => Str]

=item [Description => Str]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::Outposts::CreateOutpost>

Returns: a L<Paws::Outposts::CreateOutpostOutput> instance

Creates an Outpost.


=head2 GetOutpost

=over

=item OutpostId => Str


=back

Each argument is described in detail in: L<Paws::Outposts::GetOutpost>

Returns: a L<Paws::Outposts::GetOutpostOutput> instance

Gets information about the specified Outpost.


=head2 GetOutpostInstanceTypes

=over

=item OutpostId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Outposts::GetOutpostInstanceTypes>

Returns: a L<Paws::Outposts::GetOutpostInstanceTypesOutput> instance

Lists the instance types for the specified Outpost.


=head2 ListOutposts

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Outposts::ListOutposts>

Returns: a L<Paws::Outposts::ListOutpostsOutput> instance

List the Outposts for your AWS account.


=head2 ListSites

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Outposts::ListSites>

Returns: a L<Paws::Outposts::ListSitesOutput> instance

Lists the sites for the specified AWS account.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

