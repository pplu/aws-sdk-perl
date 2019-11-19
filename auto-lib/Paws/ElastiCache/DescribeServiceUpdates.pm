# Generated from callargs_class.tt

package Paws::ElastiCache::DescribeServiceUpdates;
  use Moo;
  use Types::Standard qw/Str Int ArrayRef Undef/;
  use Paws::ElastiCache::Types qw//;
  has Marker => (is => 'ro', isa => Str, predicate => 1);
  has MaxRecords => (is => 'ro', isa => Int, predicate => 1);
  has ServiceUpdateName => (is => 'ro', isa => Str, predicate => 1);
  has ServiceUpdateStatus => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DescribeServiceUpdates');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::ElastiCache::ServiceUpdatesMessage');
  class_has _result_key => (isa => Str, is => 'ro', default => 'DescribeServiceUpdatesResult');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ServiceUpdateStatus' => {
                                          'type' => 'ArrayRef[Str|Undef]'
                                        },
               'MaxRecords' => {
                                 'type' => 'Int'
                               },
               'ServiceUpdateName' => {
                                        'type' => 'Str'
                                      },
               'Marker' => {
                             'type' => 'Str'
                           }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::DescribeServiceUpdates - Arguments for method DescribeServiceUpdates on L<Paws::ElastiCache>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeServiceUpdates on the
L<Amazon ElastiCache|Paws::ElastiCache> service. Use the attributes of this class
as arguments to method DescribeServiceUpdates.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeServiceUpdates.

=head1 SYNOPSIS

    my $elasticache = Paws->service('ElastiCache');
    my $ServiceUpdatesMessage = $elasticache->DescribeServiceUpdates(
      Marker              => 'MyString',    # OPTIONAL
      MaxRecords          => 1,             # OPTIONAL
      ServiceUpdateName   => 'MyString',    # OPTIONAL
      ServiceUpdateStatus => [
        'available', ...    # values: available, cancelled, expired
      ],                    # OPTIONAL
    );

    # Results:
    my $Marker         = $ServiceUpdatesMessage->Marker;
    my $ServiceUpdates = $ServiceUpdatesMessage->ServiceUpdates;

    # Returns a L<Paws::ElastiCache::ServiceUpdatesMessage> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticache/DescribeServiceUpdates>

=head1 ATTRIBUTES


=head2 Marker => Str

An optional marker returned from a prior request. Use this marker for
pagination of results from this operation. If this parameter is
specified, the response includes only records beyond the marker, up to
the value specified by C<MaxRecords>.



=head2 MaxRecords => Int

The maximum number of records to include in the response



=head2 ServiceUpdateName => Str

The unique ID of the service update



=head2 ServiceUpdateStatus => ArrayRef[Str|Undef]

The status of the service update




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeServiceUpdates in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

