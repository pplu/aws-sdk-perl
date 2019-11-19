
package Paws::EC2::GetCapacityReservationUsage;
  use Moo;
  use Types::Standard qw/Str Bool Int/;
  use Paws::EC2::Types qw//;
  has CapacityReservationId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has DryRun => (is => 'ro', isa => Bool, predicate => 1);
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'GetCapacityReservationUsage');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::EC2::GetCapacityReservationUsageResult');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'CapacityReservationId' => 1
                  },
  'types' => {
               'CapacityReservationId' => {
                                            'type' => 'Str'
                                          },
               'MaxResults' => {
                                 'type' => 'Int'
                               },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'DryRun' => {
                             'type' => 'Bool'
                           }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::GetCapacityReservationUsage - Arguments for method GetCapacityReservationUsage on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetCapacityReservationUsage on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method GetCapacityReservationUsage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetCapacityReservationUsage.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $GetCapacityReservationUsageResult = $ec2->GetCapacityReservationUsage(
      CapacityReservationId => 'MyCapacityReservationId',
      DryRun                => 1,                           # OPTIONAL
      MaxResults            => 1,                           # OPTIONAL
      NextToken             => 'MyString',                  # OPTIONAL
    );

    # Results:
    my $AvailableInstanceCount =
      $GetCapacityReservationUsageResult->AvailableInstanceCount;
    my $CapacityReservationId =
      $GetCapacityReservationUsageResult->CapacityReservationId;
    my $InstanceType   = $GetCapacityReservationUsageResult->InstanceType;
    my $InstanceUsages = $GetCapacityReservationUsageResult->InstanceUsages;
    my $NextToken      = $GetCapacityReservationUsageResult->NextToken;
    my $State          = $GetCapacityReservationUsageResult->State;
    my $TotalInstanceCount =
      $GetCapacityReservationUsageResult->TotalInstanceCount;

    # Returns a L<Paws::EC2::GetCapacityReservationUsageResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/GetCapacityReservationUsage>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CapacityReservationId => Str

The ID of the Capacity Reservation.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 MaxResults => Int

The maximum number of results to return for the request in a single
page. The remaining results can be seen by sending another request with
the returned nextToken value.

Valid range: Minimum value of 1. Maximum value of 1000.



=head2 NextToken => Str

The token to retrieve the next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetCapacityReservationUsage in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

