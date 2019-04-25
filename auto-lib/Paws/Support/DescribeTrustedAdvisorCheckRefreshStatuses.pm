
package Paws::Support::DescribeTrustedAdvisorCheckRefreshStatuses;
  use Moose;
  has CheckIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'checkIds' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTrustedAdvisorCheckRefreshStatuses');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Support::DescribeTrustedAdvisorCheckRefreshStatusesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Support::DescribeTrustedAdvisorCheckRefreshStatuses - Arguments for method DescribeTrustedAdvisorCheckRefreshStatuses on L<Paws::Support>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeTrustedAdvisorCheckRefreshStatuses on the
L<AWS Support|Paws::Support> service. Use the attributes of this class
as arguments to method DescribeTrustedAdvisorCheckRefreshStatuses.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeTrustedAdvisorCheckRefreshStatuses.

=head1 SYNOPSIS

    my $support = Paws->service('Support');
    my $DescribeTrustedAdvisorCheckRefreshStatusesResponse =
      $support->DescribeTrustedAdvisorCheckRefreshStatuses(
      CheckIds => [ 'MyString', ... ],

      );

    # Results:
    my $Statuses =
      $DescribeTrustedAdvisorCheckRefreshStatusesResponse->Statuses;

# Returns a L<Paws::Support::DescribeTrustedAdvisorCheckRefreshStatusesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/support/DescribeTrustedAdvisorCheckRefreshStatuses>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CheckIds => ArrayRef[Str|Undef]

The IDs of the Trusted Advisor checks to get the status of. B<Note:>
Specifying the check ID of a check that is automatically refreshed
causes an C<InvalidParameterValue> error.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeTrustedAdvisorCheckRefreshStatuses in L<Paws::Support>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

