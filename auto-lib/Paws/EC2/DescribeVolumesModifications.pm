
package Paws::EC2::DescribeVolumesModifications;
  use Moo;
  use Types::Standard qw/Str Bool ArrayRef Int Undef/;
  use Paws::EC2::Types qw/EC2_Filter/;
  has DryRun => (is => 'ro', isa => Bool, predicate => 1);
  has Filters => (is => 'ro', isa => ArrayRef[EC2_Filter], predicate => 1);
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);
  has VolumeIds => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DescribeVolumesModifications');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::EC2::DescribeVolumesModificationsResult');
  class_has _result_key => (isa => Str, is => 'ro');

      sub params_map {
    our $Params_map ||= {
  'types' => {
               'DryRun' => {
                             'type' => 'Bool'
                           },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Filters' => {
                              'class' => 'Paws::EC2::Filter',
                              'type' => 'ArrayRef[EC2_Filter]'
                            },
               'MaxResults' => {
                                 'type' => 'Int'
                               },
               'VolumeIds' => {
                                'type' => 'ArrayRef[Str|Undef]'
                              }
             },
  'NameInRequest' => {
                       'Filters' => 'Filter',
                       'VolumeIds' => 'VolumeId'
                     }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeVolumesModifications - Arguments for method DescribeVolumesModifications on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeVolumesModifications on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DescribeVolumesModifications.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeVolumesModifications.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $DescribeVolumesModificationsResult = $ec2->DescribeVolumesModifications(
      DryRun  => 1,    # OPTIONAL
      Filters => [
        {
          Name   => 'MyString',
          Values => [ 'MyString', ... ],    # OPTIONAL
        },
        ...
      ],                                    # OPTIONAL
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyString',             # OPTIONAL
      VolumeIds  => [ 'MyString', ... ],    # OPTIONAL
    );

    # Results:
    my $NextToken = $DescribeVolumesModificationsResult->NextToken;
    my $VolumesModifications =
      $DescribeVolumesModificationsResult->VolumesModifications;

    # Returns a L<Paws::EC2::DescribeVolumesModificationsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DescribeVolumesModifications>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Filters => ArrayRef[EC2_Filter]

The filters. Supported filters: C<volume-id>, C<modification-state>,
C<target-size>, C<target-iops>, C<target-volume-type>,
C<original-size>, C<original-iops>, C<original-volume-type>,
C<start-time>.



=head2 MaxResults => Int

The maximum number of results (up to a limit of 500) to be returned in
a paginated request.



=head2 NextToken => Str

The C<nextToken> value returned by a previous paginated request.



=head2 VolumeIds => ArrayRef[Str|Undef]

The IDs of the volumes for which in-progress modifications will be
described.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeVolumesModifications in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

