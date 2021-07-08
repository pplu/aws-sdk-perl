
package Paws::Forecast::CreateDatasetGroup;
  use Moose;
  has DatasetArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has DatasetGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Domain => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Forecast::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDatasetGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Forecast::CreateDatasetGroupResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Forecast::CreateDatasetGroup - Arguments for method CreateDatasetGroup on L<Paws::Forecast>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDatasetGroup on the
L<Amazon Forecast Service|Paws::Forecast> service. Use the attributes of this class
as arguments to method CreateDatasetGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDatasetGroup.

=head1 SYNOPSIS

    my $forecast = Paws->service('Forecast');
    my $CreateDatasetGroupResponse = $forecast->CreateDatasetGroup(
      DatasetGroupName => 'MyName',
      Domain           => 'RETAIL',
      DatasetArns      => [
        'MyArn', ...    # max: 256
      ],    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $DatasetGroupArn = $CreateDatasetGroupResponse->DatasetGroupArn;

    # Returns a L<Paws::Forecast::CreateDatasetGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/forecast/CreateDatasetGroup>

=head1 ATTRIBUTES


=head2 DatasetArns => ArrayRef[Str|Undef]

An array of Amazon Resource Names (ARNs) of the datasets that you want
to include in the dataset group.



=head2 B<REQUIRED> DatasetGroupName => Str

A name for the dataset group.



=head2 B<REQUIRED> Domain => Str

The domain associated with the dataset group. When you add a dataset to
a dataset group, this value and the value specified for the C<Domain>
parameter of the CreateDataset operation must match.

The C<Domain> and C<DatasetType> that you choose determine the fields
that must be present in training data that you import to a dataset. For
example, if you choose the C<RETAIL> domain and C<TARGET_TIME_SERIES>
as the C<DatasetType>, Amazon Forecast requires that C<item_id>,
C<timestamp>, and C<demand> fields are present in your data. For more
information, see howitworks-datasets-groups.

Valid values are: C<"RETAIL">, C<"CUSTOM">, C<"INVENTORY_PLANNING">, C<"EC2_CAPACITY">, C<"WORK_FORCE">, C<"WEB_TRAFFIC">, C<"METRICS">

=head2 Tags => ArrayRef[L<Paws::Forecast::Tag>]

The optional metadata that you apply to the dataset group to help you
categorize and organize them. Each tag consists of a key and an
optional value, both of which you define.

The following basic restrictions apply to tags:

=over

=item *

Maximum number of tags per resource - 50.

=item *

For each resource, each tag key must be unique, and each tag key can
have only one value.

=item *

Maximum key length - 128 Unicode characters in UTF-8.

=item *

Maximum value length - 256 Unicode characters in UTF-8.

=item *

If your tagging schema is used across multiple services and resources,
remember that other services may have restrictions on allowed
characters. Generally allowed characters are: letters, numbers, and
spaces representable in UTF-8, and the following characters: + - = . _
: / @.

=item *

Tag keys and values are case sensitive.

=item *

Do not use C<aws:>, C<AWS:>, or any upper or lowercase combination of
such as a prefix for keys as it is reserved for AWS use. You cannot
edit or delete tag keys with this prefix. Values can have this prefix.
If a tag value has C<aws> as its prefix but the key does not, then
Forecast considers it to be a user tag and will count against the limit
of 50 tags. Tags with only the key prefix of C<aws> do not count
against your tags per resource limit.

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDatasetGroup in L<Paws::Forecast>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

