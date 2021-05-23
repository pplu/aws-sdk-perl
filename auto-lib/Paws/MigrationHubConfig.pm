package Paws::MigrationHubConfig;
  use Moose;
  sub service { 'migrationhub-config' }
  sub signing_name { 'mgh' }
  sub version { '2019-06-30' }
  sub target_prefix { 'AWSMigrationHubMultiAccountService' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub CreateHomeRegionControl {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MigrationHubConfig::CreateHomeRegionControl', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeHomeRegionControls {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MigrationHubConfig::DescribeHomeRegionControls', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetHomeRegion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MigrationHubConfig::GetHomeRegion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/CreateHomeRegionControl DescribeHomeRegionControls GetHomeRegion / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubConfig - Perl Interface to AWS AWS Migration Hub Config

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('MigrationHubConfig');
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

The AWS Migration Hub home region APIs are available specifically for
working with your Migration Hub home region. You can use these APIs to
determine a home region, as well as to create and work with controls
that describe the home region.

=over

=item *

You must make API calls for write actions (create, notify, associate,
disassociate, import, or put) while in your home region, or a
C<HomeRegionNotSetException> error is returned.

=item *

API calls for read actions (list, describe, stop, and delete) are
permitted outside of your home region.

=item *

If you call a write API outside the home region, an
C<InvalidInputException> is returned.

=item *

You can call C<GetHomeRegion> action to obtain the account's Migration
Hub home region.

=back

For specific API usage, see the sections that follow in this AWS
Migration Hub Home Region API reference.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/migrationhub-config-2019-06-30>


=head1 METHODS

=head2 CreateHomeRegionControl

=over

=item HomeRegion => Str

=item Target => L<Paws::MigrationHubConfig::Target>

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::MigrationHubConfig::CreateHomeRegionControl>

Returns: a L<Paws::MigrationHubConfig::CreateHomeRegionControlResult> instance

This API sets up the home region for the calling account only.


=head2 DescribeHomeRegionControls

=over

=item [ControlId => Str]

=item [HomeRegion => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Target => L<Paws::MigrationHubConfig::Target>]


=back

Each argument is described in detail in: L<Paws::MigrationHubConfig::DescribeHomeRegionControls>

Returns: a L<Paws::MigrationHubConfig::DescribeHomeRegionControlsResult> instance

This API permits filtering on the C<ControlId> and C<HomeRegion>
fields.


=head2 GetHomeRegion






Each argument is described in detail in: L<Paws::MigrationHubConfig::GetHomeRegion>

Returns: a L<Paws::MigrationHubConfig::GetHomeRegionResult> instance

Returns the calling accountE<rsquo>s home region, if configured. This
API is used by other AWS services to determine the regional endpoint
for calling AWS Application Discovery Service and Migration Hub. You
must call C<GetHomeRegion> at least once before you call any other AWS
Application Discovery Service and AWS Migration Hub APIs, to obtain the
account's Migration Hub home region.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

