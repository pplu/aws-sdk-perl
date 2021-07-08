package Paws::MarketplaceCatalog;
  use Moose;
  sub service { 'catalog.marketplace' }
  sub signing_name { 'aws-marketplace' }
  sub version { '2018-09-17' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CancelChangeSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MarketplaceCatalog::CancelChangeSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeChangeSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MarketplaceCatalog::DescribeChangeSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEntity {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MarketplaceCatalog::DescribeEntity', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListChangeSets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MarketplaceCatalog::ListChangeSets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEntities {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MarketplaceCatalog::ListEntities', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartChangeSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MarketplaceCatalog::StartChangeSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/CancelChangeSet DescribeChangeSet DescribeEntity ListChangeSets ListEntities StartChangeSet / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MarketplaceCatalog - Perl Interface to AWS AWS Marketplace Catalog Service

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('MarketplaceCatalog');
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

Catalog API actions allow you to manage your entities through list,
describe, and update capabilities. An entity can be a product or an
offer on AWS Marketplace.

You can automate your entity update process by integrating the AWS
Marketplace Catalog API with your AWS Marketplace product build or
deployment pipelines. You can also create your own applications on top
of the Catalog API to manage your products on AWS Marketplace.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/catalog.marketplace-2018-09-17>


=head1 METHODS

=head2 CancelChangeSet

=over

=item Catalog => Str

=item ChangeSetId => Str


=back

Each argument is described in detail in: L<Paws::MarketplaceCatalog::CancelChangeSet>

Returns: a L<Paws::MarketplaceCatalog::CancelChangeSetResponse> instance

Used to cancel an open change request. Must be sent before the status
of the request changes to C<APPLYING>, the final stage of completing
your change request. You can describe a change during the 60-day
request history retention period for API calls.


=head2 DescribeChangeSet

=over

=item Catalog => Str

=item ChangeSetId => Str


=back

Each argument is described in detail in: L<Paws::MarketplaceCatalog::DescribeChangeSet>

Returns: a L<Paws::MarketplaceCatalog::DescribeChangeSetResponse> instance

Provides information about a given change set.


=head2 DescribeEntity

=over

=item Catalog => Str

=item EntityId => Str


=back

Each argument is described in detail in: L<Paws::MarketplaceCatalog::DescribeEntity>

Returns: a L<Paws::MarketplaceCatalog::DescribeEntityResponse> instance

Returns the metadata and content of the entity.


=head2 ListChangeSets

=over

=item Catalog => Str

=item [FilterList => ArrayRef[L<Paws::MarketplaceCatalog::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Sort => L<Paws::MarketplaceCatalog::Sort>]


=back

Each argument is described in detail in: L<Paws::MarketplaceCatalog::ListChangeSets>

Returns: a L<Paws::MarketplaceCatalog::ListChangeSetsResponse> instance

Returns the list of change sets owned by the account being used to make
the call. You can filter this list by providing any combination of
C<entityId>, C<ChangeSetName>, and status. If you provide more than one
filter, the API operation applies a logical AND between the filters.

You can describe a change during the 60-day request history retention
period for API calls.


=head2 ListEntities

=over

=item Catalog => Str

=item EntityType => Str

=item [FilterList => ArrayRef[L<Paws::MarketplaceCatalog::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Sort => L<Paws::MarketplaceCatalog::Sort>]


=back

Each argument is described in detail in: L<Paws::MarketplaceCatalog::ListEntities>

Returns: a L<Paws::MarketplaceCatalog::ListEntitiesResponse> instance

Provides the list of entities of a given type.


=head2 StartChangeSet

=over

=item Catalog => Str

=item ChangeSet => ArrayRef[L<Paws::MarketplaceCatalog::Change>]

=item [ChangeSetName => Str]

=item [ClientRequestToken => Str]


=back

Each argument is described in detail in: L<Paws::MarketplaceCatalog::StartChangeSet>

Returns: a L<Paws::MarketplaceCatalog::StartChangeSetResponse> instance

This operation allows you to request changes for your entities. Within
a single ChangeSet, you cannot start the same change type against the
same entity multiple times. Additionally, when a ChangeSet is running,
all the entities targeted by the different changes are locked until the
ChangeSet has completed (either succeeded, cancelled, or failed). If
you try to start a ChangeSet containing a change against an entity that
is already locked, you will receive a C<ResourceInUseException>.

For example, you cannot start the ChangeSet described in the example
(https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/API_StartChangeSet.html#API_StartChangeSet_Examples)
later in this topic, because it contains two changes to execute the
same change type (C<AddRevisions>) against the same entity
(C<entity-id@1)>.

For more information about working with change sets, see Working with
change sets
(https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/welcome.html#working-with-change-sets).




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

