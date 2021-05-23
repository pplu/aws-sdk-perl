package Paws::SageMakerFeatureStoreRuntime;
  use Moose;
  sub service { 'featurestore-runtime.sagemaker' }
  sub signing_name { 'sagemaker' }
  sub version { '2020-07-01' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub DeleteRecord {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMakerFeatureStoreRuntime::DeleteRecord', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRecord {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMakerFeatureStoreRuntime::GetRecord', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutRecord {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SageMakerFeatureStoreRuntime::PutRecord', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/DeleteRecord GetRecord PutRecord / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMakerFeatureStoreRuntime - Perl Interface to AWS Amazon SageMaker Feature Store Runtime

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('SageMakerFeatureStoreRuntime');
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

Contains all data plane API operations and data types for the Amazon
SageMaker Feature Store. Use this API to put, delete, and retrieve
(get) features from a feature store.

Use the following operations to configure your C<OnlineStore> and
C<OfflineStore> features, and to create and manage feature groups:

=over

=item *

CreateFeatureGroup
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateFeatureGroup.html)

=item *

DeleteFeatureGroup
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DeleteFeatureGroup.html)

=item *

DescribeFeatureGroup
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DescribeFeatureGroup.html)

=item *

ListFeatureGroups
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_ListFeatureGroups.html)

=back


For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/featurestore-runtime.sagemaker-2020-07-01>


=head1 METHODS

=head2 DeleteRecord

=over

=item EventTime => Str

=item FeatureGroupName => Str

=item RecordIdentifierValueAsString => Str


=back

Each argument is described in detail in: L<Paws::SageMakerFeatureStoreRuntime::DeleteRecord>

Returns: nothing

Deletes a C<Record> from a C<FeatureGroup>. A new record will show up
in the C<OfflineStore> when the C<DeleteRecord> API is called. This
record will have a value of C<True> in the C<is_deleted> column.


=head2 GetRecord

=over

=item FeatureGroupName => Str

=item RecordIdentifierValueAsString => Str

=item [FeatureNames => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::SageMakerFeatureStoreRuntime::GetRecord>

Returns: a L<Paws::SageMakerFeatureStoreRuntime::GetRecordResponse> instance

Use for C<OnlineStore> serving from a C<FeatureStore>. Only the latest
records stored in the C<OnlineStore> can be retrieved. If no Record
with C<RecordIdentifierValue> is found, then an empty result is
returned.


=head2 PutRecord

=over

=item FeatureGroupName => Str

=item Record => ArrayRef[L<Paws::SageMakerFeatureStoreRuntime::FeatureValue>]


=back

Each argument is described in detail in: L<Paws::SageMakerFeatureStoreRuntime::PutRecord>

Returns: nothing

Used for data ingestion into the C<FeatureStore>. The C<PutRecord> API
writes to both the C<OnlineStore> and C<OfflineStore>. If the record is
the latest record for the C<recordIdentifier>, the record is written to
both the C<OnlineStore> and C<OfflineStore>. If the record is a
historic record, it is written only to the C<OfflineStore>.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

