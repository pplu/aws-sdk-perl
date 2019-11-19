# Generated from json/callresult_class.tt

package Paws::Forecast::DescribeDatasetGroupResponse;
  use Moo;
  use Types::Standard qw/Str Undef ArrayRef/;
  use Paws::Forecast::Types qw//;
  has CreationTime => (is => 'ro', isa => Str);
  has DatasetArns => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has DatasetGroupArn => (is => 'ro', isa => Str);
  has DatasetGroupName => (is => 'ro', isa => Str);
  has Domain => (is => 'ro', isa => Str);
  has LastModificationTime => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DatasetGroupArn' => {
                                      'type' => 'Str'
                                    },
               'Status' => {
                             'type' => 'Str'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'LastModificationTime' => {
                                           'type' => 'Str'
                                         },
               'DatasetGroupName' => {
                                       'type' => 'Str'
                                     },
               'Domain' => {
                             'type' => 'Str'
                           },
               'DatasetArns' => {
                                  'type' => 'ArrayRef[Str|Undef]'
                                },
               'CreationTime' => {
                                   'type' => 'Str'
                                 }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Forecast::DescribeDatasetGroupResponse

=head1 ATTRIBUTES


=head2 CreationTime => Str

When the dataset group was created.


=head2 DatasetArns => ArrayRef[Str|Undef]

An array of Amazon Resource Names (ARNs) of the datasets contained in
the dataset group.


=head2 DatasetGroupArn => Str

The ARN of the dataset group.


=head2 DatasetGroupName => Str

The name of the dataset group.


=head2 Domain => Str

The domain associated with the dataset group. The C<Domain> and
C<DatasetType> that you choose determine the fields that must be
present in the training data that you import to the dataset. For
example, if you choose the C<RETAIL> domain and C<TARGET_TIME_SERIES>
as the C<DatasetType>, Amazon Forecast requires C<item_id>,
C<timestamp>, and C<demand> fields to be present in your data. For more
information, see howitworks-datasets-groups.

Valid values are: C<"RETAIL">, C<"CUSTOM">, C<"INVENTORY_PLANNING">, C<"EC2_CAPACITY">, C<"WORK_FORCE">, C<"WEB_TRAFFIC">, C<"METRICS">
=head2 LastModificationTime => Str

When the dataset group was created or last updated from a call to the
UpdateDatasetGroup operation. While the dataset group is being updated,
C<LastModificationTime> is the current query time.


=head2 Status => Str

The status of the dataset group. States include:

=over

=item *

C<ACTIVE>

=item *

C<CREATE_PENDING>, C<CREATE_IN_PROGRESS>, C<CREATE_FAILED>

=item *

C<DELETE_PENDING>, C<DELETE_IN_PROGRESS>, C<DELETE_FAILED>

=item *

C<UPDATE_PENDING>, C<UPDATE_IN_PROGRESS>, C<UPDATE_FAILED>

=back

The C<UPDATE> states apply when the UpdateDatasetGroup operation is
called.

The C<Status> of the dataset group must be C<ACTIVE> before creating a
predictor using the dataset group.


=head2 _request_id => Str


=cut

1;