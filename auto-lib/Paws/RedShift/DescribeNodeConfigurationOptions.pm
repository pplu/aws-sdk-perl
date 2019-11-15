
package Paws::RedShift::DescribeNodeConfigurationOptions;
  use Moose;
  has ActionType => (is => 'ro', isa => 'Str', required => 1);
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::RedShift::NodeConfigurationOptionsFilter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has OwnerAccount => (is => 'ro', isa => 'Str');
  has SnapshotIdentifier => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeNodeConfigurationOptions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedShift::NodeConfigurationOptionsMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeNodeConfigurationOptionsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::DescribeNodeConfigurationOptions - Arguments for method DescribeNodeConfigurationOptions on L<Paws::RedShift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeNodeConfigurationOptions on the
L<Amazon Redshift|Paws::RedShift> service. Use the attributes of this class
as arguments to method DescribeNodeConfigurationOptions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeNodeConfigurationOptions.

=head1 SYNOPSIS

    my $redshift = Paws->service('RedShift');
    my $NodeConfigurationOptionsMessage =
      $redshift->DescribeNodeConfigurationOptions(
      ActionType => 'restore-cluster',
      Filters    => [
        {
          Name => 'NodeType'
          , # values: NodeType, NumberOfNodes, EstimatedDiskUtilizationPercent; OPTIONAL
          Operator => 'eq',  # values: eq, lt, gt, le, ge, in, between; OPTIONAL
          Values => [ 'MyString', ... ],    # OPTIONAL
        },
        ...
      ],                                    # OPTIONAL
      Marker             => 'MyString',     # OPTIONAL
      MaxRecords         => 1,              # OPTIONAL
      OwnerAccount       => 'MyString',     # OPTIONAL
      SnapshotIdentifier => 'MyString',     # OPTIONAL
      );

    # Results:
    my $Marker = $NodeConfigurationOptionsMessage->Marker;
    my $NodeConfigurationOptionList =
      $NodeConfigurationOptionsMessage->NodeConfigurationOptionList;

    # Returns a L<Paws::RedShift::NodeConfigurationOptionsMessage> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift/DescribeNodeConfigurationOptions>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ActionType => Str

The action type to evaluate for possible node configurations.
Currently, it must be "restore-cluster".

Valid values are: C<"restore-cluster">

=head2 Filters => ArrayRef[L<Paws::RedShift::NodeConfigurationOptionsFilter>]

A set of name, operator, and value items to filter the results.



=head2 Marker => Str

An optional parameter that specifies the starting point to return a set
of response records. When the results of a
DescribeNodeConfigurationOptions request exceed the value specified in
C<MaxRecords>, AWS returns a value in the C<Marker> field of the
response. You can retrieve the next set of response records by
providing the returned marker value in the C<Marker> parameter and
retrying the request.



=head2 MaxRecords => Int

The maximum number of response records to return in each call. If the
number of remaining response records exceeds the specified
C<MaxRecords> value, a value is returned in a C<marker> field of the
response. You can retrieve the next set of records by retrying the
command with the returned marker value.

Default: C<500>

Constraints: minimum 100, maximum 500.



=head2 OwnerAccount => Str

The AWS customer account used to create or copy the snapshot. Required
if you are restoring a snapshot you do not own, optional if you own the
snapshot.



=head2 SnapshotIdentifier => Str

The identifier of the snapshot to evaluate for possible node
configurations.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeNodeConfigurationOptions in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

